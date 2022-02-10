# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jchakir <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/06 10:32:40 by jchakir           #+#    #+#              #
#    Updated: 2021/11/20 15:56:38 by jchakir          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -c -Wall -Wextra -Werror
NAME = libft.a
FUNCS =  ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c\
	ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c\
	ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c\
	ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c\
	ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c	ft_tolower.c ft_toupper.c

BONUS = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c\
	   	ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c
OBJ = $(FUNCS:.c=.o)
BOBJ = $(BONUS:.c=.o)

all: creat
	ar rcs $(NAME) $(OBJ)
creat:
	$(CC) $(CFLAGS) $(FUNCS)

$(NAME): all

fclean: clean
	rm -rf  $(NAME)
clean:
	rm -rf $(FUNCS:.c=.o) $(BONUS:.c=.o)

re: fclean all

bonus:
	$(CC) $(CFLAGS) $(BONUS)
	ar rcs $(NAME) $(BOBJ)
