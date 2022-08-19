## Round Robin Scheduling

In XV6 processes were originally scheduled using the Round Robin policy. In this policy, all processes are treated equally and are run for the same
amount of time. For example, if there were 3 processes A, B, and C, these processes would be put in a queue and after the timer tick for one process
has terminated, that process will be put at the end of the queue. Lastly, it's important to note that processes that are blocked/sleeping are just skipped.

## Why Use Lottery Scheduling instead of Round Robin?

Some processes are more important than other processes, so we want a policy that recognizes the difference in their importance. Also, we want a policy that
gives more importance to processes that have been blocked for an extended period of time.

## Lottery Scheduling

In this policy, a lottery is held after every tick to determine the next process to be run. To account for process differences, each process is given the
number of tickets corresponding to their importance level (higher number of tickets means more important) and processes that are blocked have their tickets
doubled for the number of ticks they were blocked for.

## Code Details
