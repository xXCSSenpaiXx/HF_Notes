# Data

### Inhalt 
- [Types](#Types)
- [Indexing](#Indexing)

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

### Array / Matrix
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
        - x = [1 5 7; 1 4 2] -> Matrix
        - x(2,3) -> Indexing
        - 2 -> Anwser
    - Index multiple values in a **matrix**
        - x = [1 5 7; 1 4 2; 3 4 6] -> Matrix
        - x(:,1:2) -> Indexing
        - 1 5, 1 4, 3 4-> Anwser
- **x(end)**
    - Index the last value
        - x = [1 5 7 4 2] -> Vector
        - x(end) -> Indexing
        - 2 -> Anwser
    - Index the second to last value
        - x(end-1) -> Indexing
        - 4 -> Anwser


## Tables

- **table**
    - Safe a column / row of a table
        - x = table_name.column
        - x = table_name.row