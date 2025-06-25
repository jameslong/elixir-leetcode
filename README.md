# Leetcode

Going through the first few exercises on Leetcode for fun and learning. 🥳

We'll aim to get the #1 (Elixir) solution for runtime performance, however there is some runtime variation on Leetcode which can't be avoided, and we only implement pure solutions. i.e. No processes/ETS.

Note, all problems were solved without AI assistance, however AI was used to help generate the solution notes.

## Performance Results (accurate as of 2025-06-25) *

| Problem | Runtime (ms) | Beats | Comments |
|---------|--------------|-------------------------------|----------|
| P001 - Two Sum | 3 | 100% |  |
| P002 - Add Two Numbers | 1 | 89% |  |
| P003 - Longest Substring Without Repeating Characters | 8 | 100% |  |
| P004 - Median of Two Sorted Arrays | 1 | 100% |  |
| P005 - Longest Palindromic Substring | 38 | 100% |  |
| P006 - Zigzag Conversion | 6 | 100% |  |
| P007 - Reverse Integer | 301 | 82% | Can't repro #1 runtime, even with exact same code |
| P008 - String to Integer (atoi) | 0 | 100% |  |
| P009 - Palindrome Number | 1 | 100% |  |
| P010 - Regular Expression Matching | 4 | 100% |  |
| P011 - Container With Most Water | 6 | 100% |  |
| P012 - Integer to Roman | 1 | 100% |  |
| P013 - Roman to Integer | 1 | 100% |  |

* there is (significant) variation in the runtime performance on Leetcode

### Observations

General:

- Pay close attention to the problem description + constraints
- Focus on algorithmic complexity first
- Always consider trading space for speed
- Favour predictable, common codepaths over unpredictable branching

Elixir specific:

- If random reads are required, converting list -> tuple is normally the best approach
- Pattern matching + recursion often result in the most performant, simplest code
- Delegate to BIFs (built in functions) where possible
- For strings, operating on binary data/chars is faster than using functions which support unicode

Resources:

- [Erlang Docs - Efficiency Guide](https://www.erlang.org/doc/system/efficiency_guide.html)
- [Michal Muskala - Optimising for the BEAM](https://www.youtube.com/watch?v=iK9oxvKiN-8)
