# Data

### Inhalt 
- [Commands](#Commands)
- [Types](#Types)
- [Indexing](#Indexing)

## Commands
- **1:10**
    - Create evenly spaced vecotrs
        - x = [1:4]
        - 1 2 3 4
- **1:2:10**
    - Create with custom spaces
        - x = [1:2:8]
        - 1 3 5 7
- **'**
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


## Types
### Scalar
Code:
```
    x = 2
```
Example:
| 2        |
|--------------|

### Row Vector
Code:
```
    x = [ 2 -9 5 ] 
```
Example:
| 2        | -9         | 5                    |
|--------------|---------------|--------------------------|

### Column Vector
Code:
```
    x = [ 2; 4; 3 ] 
```
Example:
| 2        |
|--------------|
| 4         | 
| 3         | 

### Array
Code:
```
    x = [ 2 -9 5; 4 23 11; 3 5 -6 ] 
```
Example:
| 2        | -9         | 5                    |
|--------------|---------------|--------------------------|
| 4         | 23          | 11                     |
| 3         | 5          | -6                     |

## Indexing
- **x(3)**
    - Index a single value in a **vector**
        - x = [1 5 7 4 2] -> Vector
        - x(3) -> Indexing
        - 7 -> Anwser
- **x(3:5)**
    - Index multiple values in a **vector**
        - x = [1 5 7 4 2] -> Vector
        - x(3:5) -> Indexing
        - 7 4 2 -> Anwser
- **x(2,3)**
    - Index a single value in a **matrix**
        - x = [1 5 7; 1 4 2] -> Vector
        - x(2,3) -> Indexing
        - 2 -> Anwser
- **x(end)**
    - Index the last value
        - x = [1 5 7 4 2] -> Vector
        - x(end) -> Indexing
        - 2 -> Anwser
    - Index the second to last value
        - x(end-1) -> Indexing
        - 4 -> Anwser
