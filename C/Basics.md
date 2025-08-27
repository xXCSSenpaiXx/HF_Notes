# C

### Subtitle 
- [Example](#Example)
- [Datatypes](#Datatypes)

---
# Example

## Hello World
```
#include <stdio.h>

int main()
{
    char number[] = "Word";  // ein Zeichen

    printf("Character is: %s \n", number); // gibt A aus
    printf("%d == %d is %d", 5, 5, 5 == 5);
    return 0;
}
```

# Datatypes
| Type                    | Example                        | Bytes                          | Format Specifier         |
|-------------------------|--------------------------------|--------------------------------|--------------------------|
| int                     | `int a = 42;`                 | at least 2, usually 4          | `%d`, `%i`              |
| char                    | `char c = 'A';`               | 1                              | `%c`                    |
| float                   | `float f = 3.14f;`            | 4                              | `%f`                    |
| double                  | `double d = 3.14159;`         | 8                              | `%lf`                   |
| short int               | `short s = 120;`              | 2 usually                      | `%hd`                   |
| unsigned int            | `unsigned int u = 99;`        | at least 2, usually 4          | `%u`                    |
| long int                | `long l = 123456;`            | at least 4, usually 8          | `%ld`, `%li`            |
| long long int           | `long long ll = 123456789;`   | at least 8                     | `%lld`, `%lli`          |
| unsigned long int       | `unsigned long ul = 1234;`    | at least 4                     | `%lu`                   |
| unsigned long long int  | `unsigned long long ull = 9;` | at least 8                     | `%llu`                  |
| signed char             | `signed char sc = -100;`      | 1                              | `%c`                    |
| unsigned char           | `unsigned char uc = 255;`     | 1                              | `%c`                    |
| long double             | `long double ld = 2.718281;`  | at least 10, usually 12 or 16  | `%Lf`                   |
