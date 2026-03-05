# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

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
In this lab we used number theory with subtractions as well by using 1's and 2's complement to effectively sum binary numbers. By using a half-subtractor and the full-adder we built in the previous lab, we are using 1's and 2's complement to get the resulting sum. We learned how to implement the 1's and 2's complement in verilog by utilizing the full-adder. This lab built off of last weeks by adding the 1's and 2's complement in order to also incorporate subtraction.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The difference is that we used the normal AND gate for the carry and ~A&B for the Borrow.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
We have to use two adders to account for the end around carry.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The problem with 2's complement is that the range is only from -8 to +7, it cannot represent the +8 in the same bit size.

