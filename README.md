# Matlab Dynamic Programming 

Dynamic Programming has been demostrated by two examples:
1. Fibonacci squence
2. Find number of path in the Grid Map with obstacles

## Example 1: Fibonacci squence

Just run the **Fibonacci/EVAL_fibo.m** file to compare run-time of the following three methods:

1. Fibo using ___Recursive method___
2. Fibo using ___Dynamic programming___
3. Fibo using ___Matrix Exponentiation___  (Fastest method)

### MATLAB function
1. **Fibonacci/Fibo_R.m: Fibonacci with Recursive approach:**
    * Time Complexity:    O(2^n)
    * Space Complexity:   O(2^n)
	
2. **Fibonacci/Fibo_DP.m: Fibonacci with Dynamic programming (Memoization):**
    * Time Complexity:     O(n)
    * Space Complexity:   O(n)

3. **Fibonacci/Fibo_M.m: Fibonacci with Matrix Exponentiation:**
	* Time Complexity:     O(log(n))
	

## Example 2: Find number of path in the Grid Map with obstacles

Just run the **Grid Path/EVAL_grid_path.m** file to compare run-time of the following two methods:

1. Count number of path using ___Recursive method___
2. Count number of path using ___Dynamic Programming___

### Usage:

``` MATLAB
clc, clear

% Define Map (Grid Path)
Map = zeros(15,10);
Map(3,5) = 1;
Map(6,7) = 1;
Map(7,3) = 1;

% Visualize Map (Grid Path)
MapView(Map)
%%
tic;
N1 = GridPath_R(Map, 1,1)
toc;

tic;
N2 = GridPath_DP(Map, 1,1)
toc;
```

Grid map is as follows:
<p align="center">
  <img src="../master/Grid Path/GridMap.png" />
</p>

``` Matlab
N1 = 475550
Elapsed time is 8.417751 seconds.

N2 = 475550
Elapsed time is 0.002251 seconds.
```

## Contact

Email: smtoraabi@ymail.com

