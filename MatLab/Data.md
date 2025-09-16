# Data

### Inhalt 
- [Types](#Types)
- [Indexing](#Indexing)

## Types / Array
### Scalar / String
Code:
```
    x = 2
    y = "abc"
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

### Char
Code:
```
    x = 'abc' 
```
Example:
| a        | b         | c                    |
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

### Matrix
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
## Comparisons
- **<**
    - Smaller than
- **>**
    - Bigger than
- **==**
    - Equale to
- **~=**
    - Not equale to
 
- **Scalar**
```
  x = 3 < 4
  x = 1
  y = 1 == 2
  y = 0 
```

## Tables

- **Create**
    - Create from columns
        - x = table(a, b)
    - Create from rows (arrays)
        - x = array2table(a)
- **Extract Column**
    - Extract a column of a table
        - x = table_name.column_name
    - Extract a value by idx
        - x = table_name.column_name(rowIDX)
- **Insert Column**
    - Insert a column of a table
        - table_name.column_name = x
- **Extract Row**
    - Extract a row of a table
        - x = table_name(3,:)
- **Max Value**
    - Save max Value and Idx
        - [maxDataPoints,maxIdx] = max(WeatherDataFixed_station.GroupCount)
- **rmmissing**
    - remove Row with missing data
- **sortrow**
    - Sort rows of a  table
    - sortrow(Table, column, direction)
