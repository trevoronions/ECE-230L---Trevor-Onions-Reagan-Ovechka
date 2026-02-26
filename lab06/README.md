# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Reagan Ovechka, Trevor Onions

## Lab Summary

In this lab, we applied our knowledge of adding and number theory to implement a two bit adder in vivado. We made an object of a full adder and utilized it in series to create a two bit adder. 

## Lab Questions

### 1 - How might you add more than two bits together?

To add more than 2 bits together, you would need to use a ripple adder, which is multiple full adders chained together.

### 2 - What is the importance of the XOR gate in an adder?

The importance of an XOR gate in an adder is it maintains the rule of adding binary numbers where 1+1=0 with a carry, and only producing 1 when the inputs are unequal, for example 1+0=1, or 0+1=1.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?

The largest possible output a two bit adder can handle is 7. This is because the largest number two bits can be is 3, 3+3=6. However, we also have a carry in for the two bit adder, meaning it is actually 3+3+1=7. Therefore, the largest possible number it can handle is 7. If it goes over this number, it is an overflow and the computer is unable to store that data.

