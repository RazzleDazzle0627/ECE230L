# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Because the Modulo Counter counts up to 2 * count before outputting anything.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
Because we preset the counter to have all 1's before cycling through.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
If our clock is 1 MHz it will take 1000 ring counters. I am unsure what our clock's frequency is.
