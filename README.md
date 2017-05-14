# Ruby A-STAR

## Introduction

This is a Ruby implementation for an A-STAR algorithm.It was written in sucha way 
it is simple to be understood and the code is widely commented.

There are different files:

 * `graph.rb`: creates the graph, starting from a bi string, like the one in
   `dungeon.txt` file;
 * `node.rb`: description of a single node of the graph, with the attribute
   **g**, **h**, and **f**;
 * `astar.rb`: it is the actual algorithm, commented in each part.
 * `main.rb`: is the entry point for the whole executio of a sample
 
## Sample output

```
################################
#  A****   ###########     #####
#      *   ##                  #
#  ##  *   ## ###   ##******** #
#  ####*   ##  ## *****######* #
#####  *  ######  *##  #### ** #
###    *  #####   *  ### ## *###
#      *######### *  ##  ##**###
#      ************      ##*   #
###       ###  ###  ######**   #
####################### B**    #
################################
```

## References

_Hart, P. E.; Nilsson, N. J.; Raphael, B._ (1968). 
"A Formal Basis for the Heuristic Determination of Minimum Cost Paths". 
IEEE Transactions on Systems Science and Cybernetics SSC4. **4** (2): 100–107. 
(doi:10.1109/TSSC.1968.300136)[https://doi.org/10.1109%2FTSSC.1968.300136] 
