# Calcaas

Calculator as a Service. A tiny project to learn and play with Elixir.

Right now it does not do much - just one process that calculates Fibonacci sequence.

To start the program you need to open two terminals in the root folder and execute:

```
# Terminal 1
iex --sname "fib" --cookie "secret" -S mix
Calcaas.start_fib
```

```
# Terminal 2
iex --sname "ask" --cookie "secret" -S mix
Node.connect :"fib@<your computer hostname>"
Calcaas.start_curiosity
```

# Parallel Fibonacci 

Calculating fibonacci in parallel.

```
mix test
# or
iex -S mix
Fib.pfib([42, 44])
```

# Fast Fibonacci 

Calculating fibonacci the faster way.

```
mix test
# or
iex -S mix
FastFib.fib(42)
```

# Calculate Money Change 

```
mix test
# or
iex -S mix
ChangeCalc.calc(42)
```

# List Utils 

```
mix test
# or
iex -S mix
Utils.reverse([1,2,3])
Utils.flatten([1,[2,3]])
Utils.concat([1], [2,3])
```

# Dynamo Web Demo

Getting my hands dirty with Dynamo \o/

```
mix server
```
