# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jbrosio <jbrosio@student.42malaga.com>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/21 16:44:12 by Juan              #+#    #+#              #
#    Updated: 2025/09/22 17:49:35 by jbrosio          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

## Var to compilator
NAME = libft.a
CC = cc
CFLAGS = -Wall -Wextra -Werror

## Var to files ft
SRC = src/ft_isalnum.c \
		src/ft_isalpha.c \
		src/ft_isascii.c \
		src/ft_isdigit.c \
		src/ft_isprint.c \
		src/ft_memset.c \
		src/ft_strlen.c \
		src/ft_bzero.c \
		src/ft_memmove.c \
		src/ft_memcpy.c \
		src/ft_strlcpy.c \
		src/ft_strlcat.c \
		src/ft_toupper.c \
		src/ft_tolower.c \
		src/ft_strchr.c \
		src/ft_strrchr.c \
		src/ft_strncmp.c \
		src/ft_memchr.c \
		src/ft_strnstr.c \
		src/ft_atoi.c \
		src/ft_calloc.c \
		src/ft_strdup.c \
		src/ft_substr.c \
		src/ft_strjoin.c \
		src/ft_memcmp.c \
		src/ft_strtrim.c \
		src/ft_split.c \
		src/ft_itoa.c \
		src/ft_strmapi.c \
		src/ft_striteri.c \
		src/ft_putchar_fd.c \
		src/ft_putstr_fd.c \
		src/ft_putendl_fd.c \
		src/ft_putnbr_fd.c \
		src/ft_lstnew_bonus.c \
		src/ft_lstadd_front_bonus.c \
		src/ft_lstsize_bonus.c \
		src/ft_lstlast_bonus.c \
		src/ft_lstadd_back_bonus.c \
		src/ft_lstdelone_bonus.c \
		src/ft_lstsize_bonus.c \
		src/ft_lstclear_bonus.c \
		src/ft_lstiter_bonus.c \
		src/ft_lstmap_bonus.c

OBJ = $(SRC:src/%.c=obj/%.o)

## Rules
all: $(NAME)

## compile rule
run:
	@$(CC) $(CFLAGS) $(SRC) && ./a.out

## converting .c to .o
obj/%.o: src/%.c
	@echo "\e[32mCompiling...\e[0m"
	@mkdir -p obj
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "\e[32m$@ created!\e[0m"

## library
$(NAME) : $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "\e[32mLibrary created!\e[0m"

## Remove rules
clean:
	@rm -f $(OBJ)
	@rm -rf obj
	@echo "\e[31mObjects deleted!\e[0m"

fclean: clean 
	@rm -f $(NAME)
	@echo "\e[31mLibrary deleted!\e[0m"

re: fclean all

.PHONY: all clean fclean re
