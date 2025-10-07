# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The half subtractor from this week's lab has borrow = to ~A & B instead of carry = A & B.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
You need to build off of each adder, doing each 'column' of addition before finding if there is an end carry around or not.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The problem is that the range is not symmetrical, as the range of negatives is 1 larger than the range of positives.