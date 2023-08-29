# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mrizakov <mrizakov@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/02 21:22:52 by mrizakov          #+#    #+#              #
#    Updated: 2023/01/07 22:13:17 by mrizakov         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC= cc
CFLAGS= -Wall -Wextra -Werror
OBJ = $(SRC:.c=.o)
BONUS_OBJ = $(BONUS_SRC:.c=.o)
SRC =  ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isdigit.c \
ft_isprint.c ft_isascii.c ft_tolower.c ft_toupper.c ft_strlen.c \
ft_memset.c ft_strncmp.c ft_memset.c ft_strnstr.c ft_memcmp.c \
ft_strlcat.c ft_calloc.c ft_strjoin.c ft_strchr.c ft_strrchr.c \
ft_memchr.c ft_memcpy.c ft_memmove.c ft_strdup.c ft_split.c \
ft_substr.c ft_strtrim.c ft_strlcpy.c ft_strnstr.c ft_strmapi.c \
ft_striteri.c ft_itoa.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
ft_putnbr_fd.c
BONUS_SRC = ft_lstadd_front.c ft_lstnew.c ft_lstsize.c ft_lstlast.c  \
ft_lstadd_back.c ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c \


all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) -I. -c $(SRC)
	ar rcs $(NAME) $(OBJ)

bonus:
	$(CC) $(CFLAGS) -I. -c $(BONUS_SRC)
	ar rcs $(NAME) $(BONUS_OBJ)

clean:
	/bin/rm -f $(OBJ) $(BONUS_OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

