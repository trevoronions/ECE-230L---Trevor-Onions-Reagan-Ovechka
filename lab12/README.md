# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Reagan Ovechka, Trevor Onions

## Summary
In this lab, we applied what we learned about One Hot and Binary state machines to make a a state machine in two different ways. We built K-Maps to design the logic for the states and then implemented them into their respective Verilog files, then we implemented a simple FSM on the Basys board. Overall, we learned how to implement a FSM using One Hot or Binary state machines with DFFs. This helped us explore implementation of different digital logic state machines and the andvantages and disadvantages of the two.

## Lab Questions

### Compare and contrast One Hot and Binary encodings
One Hot encoding makes current state logic decisions much easier, but it requires more DFFs as the complexity grows. Binary encoding often has invalid representations, such as no state D but the two DFFs can represent the state 11. 

### Which method did your team find easier, and why?
We found the One Hot easier, we could find the equations based just on the state table and there was no need to derive a K-Map. It was more straight forward.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
One Hot would be preffered when targeting FPGSs, aiming for higher clock speeds, or needing fast, simple, and independant combinatorial logic. Binary would be preffered if an FSM has hundreds of states because a One Hot uses more DFFs than Binary, making wasteful hardware. 
