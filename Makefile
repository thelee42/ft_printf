# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: thelee <thealee@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/06 19:25:54 by thelee            #+#    #+#              #
#    Updated: 2023/12/17 13:26:48 by thelee           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc

CFLAGS = -Wall -Wextra -Werror

RM = rm -f

NAME = libftprintf.a

SRCS = ft_printf.c \
	ft_format.c \
	ft_print_char.c \
	ft_print_str.c \
	ft_print_nbr.c \
	ft_print_unsigned.c \
	ft_print_hexa.c \
	ft_print_ptr.c\

OBJS = $(SRCS:.c=.o)

all : $(NAME)

%.o : %.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJS)
	ar rc $@ $^ 

clean :
	$(RM) $(OBJS)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY : all clean fclean re
