<p>
<img src="https://github.com/damiandania/damiandania/blob/main/Pics/Libft.png"
    alt="Project pic" width="150" height="150"/>
</p>

# Libft 📚

**Libft** is a project that involves creating a custom C library. The goal is to reimplement standard C library functions and create additional utility functions to be used in future projects.

## Features

- **Standard Library Functions:** Reimplement standard C library functions like `strlen`, `strcpy`, `strcmp`, etc.
- **Utility Functions:** Implement additional utility functions for string manipulation, memory management, and linked list operations.
- **Modular Design:** Organize functions into separate modules for better maintainability.

## Technologies Used

- **C:** The library is implemented in C.

## Installation

1. **Clone this repository:**
    ```bash
    git clone https://github.com/damiandania/Libft.git
    ```

2. **Navigate to the project directory:**
    ```bash
    cd Libft
    ```

3. **Build the library:**
    ```bash
    make
    ```

## Usage

Once the library is built, you can include it in your C projects. For example:

```c
#include "libft.h"

int main() {
    char *str = ft_strdup("Hello, Libft!");
    ft_putstr(str);
    free(str);
    return 0;
}
```

Compile and link your program with the libft.a library:

```bash
gcc -o my_program my_program.c libft.a
./my_program
```
