# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name 
Reagan Ovechka, Trevor Onions

## Lab Summary
In this lab, we dove deeper into using verilog to implement digital logic. This lab was different because we had to design the top.v file and build each of the circuits. We were able to build a more complex circuit by using the output of one circuit as an input to the other. In this lab we learned how to build these more complex circuits within verilog, applying what we learned in class to build this circuit based on the truth table.

## Lab Questions

### 1 - Explain the role of the Top Level file.
The Top Level file contains the implementation of the connection of the two circuits. The main module holds the declaration of the inputs and outputs for each circuit- assigning switches and leds.

### 2 - Explain the function of the Constraints file.
The function of the constraints file is to initiate all switches and LEDs you will be using in the lab on the board. It also links the pin name that the board understands to the a more human understandable format like led 0 or sw 5 instead of PACKAGE_PIN V17, and sets the proper voltage going to the chosen device you want to use. 
### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
I believe that it was the correct choice on part 2 as it was a 3 groups of four which was the most optimal method to use for that part. For part 1 though I would have used MinTerms as 2 groups of eight on max terms is equivalent to one group of four for min terms, and there was the ability to use one group of four for min terms.
