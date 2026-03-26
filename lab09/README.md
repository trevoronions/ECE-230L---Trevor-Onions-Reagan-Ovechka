# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Reagan Ovechka, Trevor Onions
## Summary
In this lab we dealt with sequential logic circuits where the output depends on both current inputs and past inputs, this means we are dealing with memory. This is the was our first introduction to using memory in digital logic, sequential Logic, and Latches. We learned how to write and implement D-Latches, use continuous assignment to implement the D-Latch in Behavioral Verilog.
## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Because Behaviour Verilog has Sensitivity Blocks and the reg keyword- which are crucial to the function of latches and memory.
### What is the meaning of always @(*) in a sensitivity block?
Means that they contain regular continuous assignment wherin no memory is needed.
### What importance is memory to digital circuits?
It enables storage and accessability of binary data.
