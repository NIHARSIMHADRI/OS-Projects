#include "types.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "x86.h"
#include "proc.h"
#include "pstat.h"
#include "spinlock.h"
#include "stddef.h"

struct {
  struct spinlock lock;
  struct proc proc[NPROC];
} ptable; 	 	

extern int rseed;



int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  
  // this will get the number of ticks that the process has sleeped for (force to sleep for specified number of ticks)
  myproc()->tracksleeptime = n;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

int sys_settickets(void) {
	int pid;
	int n_tickets;
	
	if (argint(0, &pid) < 0) {
		return -1;
	}
	
	if (argint(1, &n_tickets) < 0) {
		return -1;
	}
	
    // invalid number of tickets
    if (pid < 0 || n_tickets <= 0) {
        return -1;
    }

    // try to find process
    struct proc *p;
    
    // check if the pid is in the ptable
    
    acquire(&ptable.lock);

    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
        if (pid == p->pid && p->state != UNUSED) {
            // update process tickets
            p->tickets = n_tickets;
            release(&ptable.lock);
            return 0;
        }
    }
    
    release(&ptable.lock);
    
    return -1; 
}

int sys_srand(void) {
    int seed;
    if (argint(0, &seed) < 0) {
    	return -1;
    }
    rseed = seed;
    return 0;
}

int sys_getpinfo(void) {
	struct pstat *get_pstat;
	
	if (argptr(0, (void *)&get_pstat, sizeof(*get_pstat)) < 0) {
		return -1;
	}
	 
	// proc is invalid
	if (!get_pstat) {
		return -1; 
	}
	
	struct proc *p;
	
	acquire(&ptable.lock);

  int i = 0;
	
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++) {
  	// get all the fields for the current process in ptable
  	get_pstat->pid[i] = p->pid;
  	get_pstat->tickets[i] = p->tickets;
  	get_pstat->runticks[i] = p->runticks;
  	get_pstat->boostsleft[i] = p->boostsleft;
  	// check if the process is in use
  	if (p->state != UNUSED) {
  		get_pstat->inuse[i] = 1;
  	} else {
  		get_pstat->inuse[i] = 0;
  	}
  	
  	// look at values of the process we are looking at
  	cprintf("pid = %d tickets= %d, boostsleft= %d\n",get_pstat->pid[i], get_pstat->tickets[i], get_pstat->boostsleft[i]);
  	i++;
  }
  
  release(&ptable.lock);
  
  return 0;
}



