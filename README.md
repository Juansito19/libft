# Libft

[Ir a Español](#espa%C3%B1ol) | [Go to English](#english)

---

## Español

### ¿Qué es Libft?

**Libft** es una librería de funciones en C desarrollada como proyecto base en la escuela 42. Contiene implementaciones propias de funciones estándar y utilidades adicionales para la manipulación de cadenas, memoria, listas y más.

### ¿Cómo compilar?

Compila la librería ejecutando:

```bash
make
```

Esto generará el archivo `libft.a` que podrás enlazar en tus proyectos.

### ¿Cómo usar?

1. **Incluye el header en tu código:**
   ```c
   #include "libft.h"
   ```
2. **Vincula la librería al compilar:**
   ```bash
   gcc tu_codigo.c -L. -lft
   ```
   O, para enlazar de forma explícita:
   ```bash
   gcc tu_codigo.c libft.a
   ```

### Limpieza

- `make clean` elimina archivos objeto.
- `make fclean` elimina archivos objeto y la librería.
- `make re` recompila desde cero.

---

## English

### What is Libft?

**Libft** is a C library of fundamental functions, developed as a base project at 42 school. It contains custom implementations of standard C functions and extra utilities for string, memory, list manipulation, and more.

### How to compile?

Build the library running:

```bash
make
```

This will generate the `libft.a` file, ready to link in your projects.

### How to use?

1. **Include the header in your code:**
   ```c
   #include "libft.h"
   ```
2. **Link the library when compiling:**
   ```bash
   gcc your_code.c -L. -lft
   ```
   Or, to link directly:
   ```bash
   gcc your_code.c libft.a
   ```

### Cleaning

- `make clean` removes object files.
- `make fclean` removes object files and the library file.
- `make re` recompiles from scratch.

---
