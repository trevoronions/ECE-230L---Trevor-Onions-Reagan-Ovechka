# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Reagan Ovechka and Trevor Onions

## Summary
In this lab we made clock dividers from a ripple counter and a modulo counter. We used the D Flip-Flop and T Flip-Flop from the previous lab and the Full-Adder from lab 6 to build these counters. We learned how to implement these dividers using the Flip-Flops and understand the modulo and ripple counters.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
It divides the clock by 2*Count because each Flip-Flop divides the clock by 2, so as you chain more Flip-Flops together, the clock is divided further. Using the example from the lab assignment, if the initial clock is 100MHz, and there are two T Flip-Flops, the final clock value would be 100 / 2^2, or 100 / 4, which gives the expected output of 25MHz.

### 2 - Why does the ripple counter's output go to all 1s on the first clock cycle?
The rippple counters output goes to all 1 because it is initialized as T=1 by default.

### 3 - What width of ripple counter would you use to get to an output of ~1KHz?
10 because the the output is 2^count and 2^10 is 1024MHz and is approximately 1KHz

