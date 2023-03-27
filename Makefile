# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ddania-c <ddania-c@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/10 13:13:18 by ddania-c          #+#    #+#              #
#    Updated: 2023/03/27 15:46:13 by ddania-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		libft.a

# directorios de archivos fuente, libreria y objets
SRC_DIR = ./src
OBJ_DIR = ./obj
INC_DIR = ./includes

# Archivos fuente, libreria y objertos
SRCS = $(SRC_DIR)/ft_atoi.c \
			$(SRC_DIR)/ft_bzero.c \
			$(SRC_DIR)/ft_calloc.c \
			$(SRC_DIR)/ft_isalnum.c \
			$(SRC_DIR)/ft_isalpha.c \
			$(SRC_DIR)/ft_isascii.c \
			$(SRC_DIR)/ft_isdigit.c \
			$(SRC_DIR)/ft_isprint.c \
			$(SRC_DIR)/ft_itoa.c \
			$(SRC_DIR)/ft_memchr.c \
			$(SRC_DIR)/ft_memcmp.c \
			$(SRC_DIR)/ft_memcpy.c \
			$(SRC_DIR)/ft_memmove.c \
			$(SRC_DIR)/ft_memset.c \
			$(SRC_DIR)/ft_putchar_fd.c \
			$(SRC_DIR)/ft_putendl_fd.c \
			$(SRC_DIR)/ft_putnbr_fd.c \
			$(SRC_DIR)/ft_putstr_fd.c \
			$(SRC_DIR)/ft_split.c \
			$(SRC_DIR)/ft_strchr.c \
			$(SRC_DIR)/ft_strdup.c \
			$(SRC_DIR)/ft_striteri.c \
			$(SRC_DIR)/ft_strjoin.c \
			$(SRC_DIR)/ft_strlcat.c \
			$(SRC_DIR)/ft_strlcpy.c \
			$(SRC_DIR)/ft_strlen.c \
			$(SRC_DIR)/ft_strmapi.c \
			$(SRC_DIR)/ft_strncmp.c \
			$(SRC_DIR)/ft_strnstr.c \
			$(SRC_DIR)/ft_strrchr.c \
			$(SRC_DIR)/ft_strtrim.c \
			$(SRC_DIR)/ft_substr.c \
			$(SRC_DIR)/ft_tolower.c \
			$(SRC_DIR)/ft_toupper.c \
			$(SRC_DIR)/ft_lstnew.c \
			$(SRC_DIR)/ft_lstadd_front.c \
			$(SRC_DIR)/ft_lstsize.c \
			$(SRC_DIR)/ft_lstlast.c \
			$(SRC_DIR)/ft_lstadd_back.c \
			$(SRC_DIR)/ft_lstdelone.c \
			$(SRC_DIR)/ft_lstclear.c \
			$(SRC_DIR)/ft_lstiter.c \
			$(SRC_DIR)/ft_lstmap.c \
			$(SRC_DIR)/ft_printf.c \
			$(SRC_DIR)/ft_find_type.c\
			$(SRC_DIR)/ft_type_c.c\
			$(SRC_DIR)/ft_type_s.c\
			$(SRC_DIR)/ft_type_x.c\
			$(SRC_DIR)/ft_type_d.c\
			$(SRC_DIR)/ft_type_u.c\
			$(SRC_DIR)/ft_type_p.c\
			main.c
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
INCS = $(INC_DIR)/libft.h

# opciones de compilacion
CC			=		gcc
RM			=		rm -f
CFLAGS		=		-Wall -Wextra -Werror

# reglas
all: $(NAME)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@

#$(SRC_DIR)/%.c$(OBJ_DIR)/%.o: $(SRCS)
#	$(CC) $(CFLAGS) -c $< -o $@

$(NAME):	$(OBJS)
	@echo "\033[0;33m\nCOMPILING LIBFT..."
	@$(CC) $(CFLAGS) $(OBJS) -o $@
	@echo "\033[1;32m./Libft created\n"

clean:
	@echo "\033[0;31mDeleting Libft object..."
	@$(RM) $(OBJS)
	@echo "\033[1;32mDone\n"

fclean: clean
	@echo "\033[0;31mDeleting Libft executable..."
	@$(RM) $(NAME)
	@echo "\033[1;32mDone\n"

re:		fclean $(NAME)

.PHONY:	all clean fclean re bonus

