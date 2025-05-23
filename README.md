# Leetcode

Going through the first few exercises on Leetcode for fun and learning. 🥳

We'll aim to get the #1 (Elixir) solution for runtime performance, however there is some runtime variation on Leetcode which can't be avoided, and we generally won't use ETS as it adds state/complexity, even though it can outperform map-based lookups.

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
