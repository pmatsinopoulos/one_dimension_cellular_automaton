Problem: Implementing a One-Dimensional Cellular Automaton
==========================================================

In ruby, you are to write a program that simulates the operation of a one-
dimensional cellular automata. You may be familiar with Conway's "game of life",
which is a two-dimensional cellular automaton; a one-dimensional cellular
automaton is much simpler, and for this problem your program will simulate a
particularly simple one-dimensional cellular automaton.

You will be implementing a particularly simple kind of one-dimensional cellular automaton
called an "elementary cellular automaton", with some additional restrictions
described below. One-dimensional cellular automata are not the same as two-
dimensional ones, although they are related.

A one-dimensional cellular automaton consists of a one-dimensional array which
stores numerical values. For this problem, the numerical values will be either 0
(off) or 1 (on). The contents of the array are initially randomly assigned to be
either 0s or 1s (roughly 50% of each; it doesn't have to be exactly 50%, but it
does have to be random). Each location in the array is referred to as a "cell" of
the array. The contents of the array are altered to give the next generation, which
depends on the previous generation and on an update rule. The update rule will
compute the new value of each cell depending on the previous value of the cell,
as well as the previous values of its left and right neighbors. So the new value of
cell 22 (for instance) will depend on the previous values of cells 21, 22, and 23.

After the program generates its initial array, it will print it to the terminal as a line
of 0s and 1s (with no spaces or newlines between the digits). So the initial line
might look like this (for an array of 70 cells):

1001110111000110001110010010001100101000011000101111110110010110010111

NOTE: This is the format we want for the output (each generation on one line,
with no spaces between cell values).

After this, your program will generate the next generation, print it as above,
generate the next generation after that, print it, and so on until some given
number of generations have been printed. For instance, if 30 generations would
be printed (in addition to the original generation, making 31 generations in all).

**This is the generation rule we'd like you to implement**: For each cell, look at its
left and right neighbors, if exactly one of the left, current, right is 1, then
next generation of the current cell is 1, otherwise it's 0. If there is no left or
right, then assume that missing neighbor is 0.

One very important aspect of simulating a one-dimensional cellular automaton is
that you should not overwrite the contents of the previous generation while
computing the next generation. Put differently, you will need two arrays while
doing the update: the array of the previous values, and the array of the next
values. You will go through the previous values and compute the next values
(one for each cell), filling up the next value array without altering the previous
value array. After you have finished computing the next values, you no longer
need the previous values and you can dispose of that array (or, if you prefer, you
can copy the next values into the previous value array). If this is not done, your
simulation will not work properly.

Now let's talk about the interface of your program. Your program must be
runnable from a terminal and accept command line arguments. These represent:

* the number of cells in the automaton
* the number of generations that are being simulated (not counting the initial
generation)

Note that you will need to use a random number generator to generate the initial
generation. You can use a library function for your chosen language; you
certainly shouldn't write your own random number generator, unless you have a
lot of free time!

One final thing: if your program receives incorrect inputs (too few command-line
arguments, or incorrect ones i.e. negative numbers or numbers other than 0 or 1
in the update rule), it should print a meaningful error message and quit. It
should not continue to execute, fail silently, crash, or interactively prompt the
user for correct inputs.
