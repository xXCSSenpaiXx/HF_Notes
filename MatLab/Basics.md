# Basics

### Inhalt 
- [Commands](#Commands)
- [Name](#Link)


---
# Commands

## Basic
- **Unix Befehle**
    - cd
    - ls
    - pwd
    - rm
    - mkdir
    - rmdir
- **clear**
    - clear screen and variables / values
- **clc**
    - only clear screen
- **result lenght**
    - format long
    - format short

## Files
- **save**
    - save .mat file
    - save filename
    - save filename variable - only save defined variable
- **load**
    - load .mat file
    - load filename
    - load filename variable - only load defined variable


## Math Functions

- **Matrix Mulitplication**
    - a*b
- **Element-wise Mulitplcation**
    - a.*b
- **π**
    - pi
- **sine**
    - sin()    
- **square root**
    - sqrt()
- **rounding**
    - round()

## Data
- **doc**
    - Open documentation of a command
        - doc command
- **1:10**
    - Create evenly spaced vecotrs
        - x = [1:4]
        - 1 2 3 4
- **1:2:10**
    - Create with custom spaces
        - x = [1:2:8]
        - 1 3 5 7
- **' / Transpont Operator**
    - Turn a Row Verctor too a Column Vector
        - x = 1:3 -> Row Vector
        - x = x' -> Column Vector
- **linspace**
    - linspace(first,last,number_of_elements)
        - x = linspace(0,1,5)
        - x = 0    0.250    0.500    0.750    1.000     
- **rand**
    - create random matrix
        - rand(2, 3)
        - 0.126	0.546 0.234
        - 0.913	0.957 0.542
- **randi**
    - create random integer matrix
        - randi([imin imax],[x y])
        - randi([1 20],[2 7])
        - 1 18 9
        - 4 6 11
- **ones**
    - create matrix of ones
        - ones(2, 3)
        - 1 1 1
        - 1 1 1
- **zeros**
    - create matrix of zeros
        - ones(2, 3)
        - 0 0 0
        - 0 0 0
- **size**
    - determin size of a matrix
        - size(x)
        - 6 3 -> (6 rows / 3 columns)
    - split result into variables
        - [row, column] = size(x)
- **max**
    - find the highest value in a array
        - max(x)
    - split result into variables
        - [xMax, index] = max(x)
- **isvector**
    - Check for datatype of a array
        - isvector(x)
        - ismatrix(x)
        - isscalar(x)


