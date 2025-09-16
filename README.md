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

We learned in this lab that the Minterms, Maxterms, and K-Map have equivalent output. Each LED represents the output of one of the three,
so each one should light up with the same output.


## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
Because K-maps are cylindrical, not 2D tables.

### Why are the names Sum of Products and Products of Sums?
Because summing is equivalent to OR and products are equivalent to AND, so you connect the sections of AND's together with OR's for Sum of Products and
vice-versa for Products of Sums.


### Open the test.v file – how are we able to check that the signals match using XOR?
If both naive.v and minterm.v are the same, we get an output of 0 and no error message. One the flipside, if the outputs are not both 1, we get an output of 
1, which outputs the error phrase. The same goes for naive.v and maxterm.v.
