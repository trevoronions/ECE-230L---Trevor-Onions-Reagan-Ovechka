# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary


## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
The reason we are able to group these 1's or 0's across edges is because the edges share a common variables for (example on the edges in a 4-Variable K-map share that B and D are 0 (if using F(A,B,C,D)))
### Why are the names Sum of Products and Products of Sums?
First the reason that the name is sum of products is because you are using one OR gate (represented by +) and multiple AND gates (represented by *), so you are summing the products.
### Open the test.v file – how are we able to check that the signals match using XOR?
We are able to check using the XOR because each of the LEDs refer to either the naive, maxterm, or minterm commands, so if we check to see with a xor command if one is lighting up and the other isn't we know that there is a error in the code. 
