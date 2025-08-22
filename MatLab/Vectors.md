# Vectors

## Commands
- **1:10**
    - Create evenly spaced vecotrs
        - x = [1:4]
        - 1 2 3 4
- **1:2:10**
    - Create with custom spaces
        - x = [1:2:8]
        - 1 3 5 7
- **linspace**
    - linspace(first,last,number_of_elements)
        - x = linspace(0,1,5)
        - x = 0    0.250    0.500    0.750    1.000     
- **Text**
    - Lorem ipsum balblabla

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
