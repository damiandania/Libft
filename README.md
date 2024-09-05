<p>
<img src="https://github.com/damiandania/damiandania/blob/main/Pics/Printf.png"
	alt="Project pic" width="150" height="150"/>
</p>

# Printf 🖨️

**Printf** is a project that involves recreating the C library function `printf`. The goal is to understand and implement the mechanics of formatted output.

## Features

- **Formatted Output:** Handle various format specifiers like `%d`, `%s`, `%c`, `%x`, etc.
- **Custom Implementation:** Implement the core functionality of `printf` from scratch.
- **Error Handling:** Gracefully handle errors and edge cases.

## Technologies Used

- **C:** The project is implemented in C.

## Installation

1. **Clone this repository:**
	```bash
	git clone https://github.com/damiandania/Printf.git
	```

2. **Navigate to the project directory:**
	```bash
	cd Printf
	```

3. **Build the project:**
	```bash
	make
	```

## Usage

Once the project is built, you can use the `ft_printf` function in your C programs. For example:

```c
#include "ft_printf.h"

int main() {
	ft_printf("Hello, %s!\n", "world");
	ft_printf("The number is %d.\n", 42);
	return 0;
}
