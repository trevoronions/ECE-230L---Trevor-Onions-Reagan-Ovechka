# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Reagan Ovechka, Trevor Onions

## Summary
In this lab we learned how to include clocks and Flip-Flops in our synchronous circuits. We created three different edge sensitive circuits, JK Flip-Flop, D Flip-Flop, and T Flip-Flop. We learned how to implement these Flip-Flops in verilog and then clocked them using what we previously learned about memory.

## Lab Questions

### What is difference between edge and level sensitive circuits?
Edge sensitive circuits only react during rising/falling edges of the clock, whereas level sensitive circuits respond the whole time the state is high or low, not just at the rising or falling edge. Edge sensitive stores the input only when the enable transitions, and the level sensitive stores it as long as the enable is high.

### Why is it important to declare initial state?
It is important to declare intital states to set the defailt case so that when the FPGA is programmed it already has a state in memory.

### What do edge sensitive circuits let us build?
Edge sensitive circuits allow us to build synchronous circuits that store data and change states only at specific moments.
