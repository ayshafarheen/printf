# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afarheen <afarheen@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/27 09:27:34 by afarheen          #+#    #+#              #
#    Updated: 2022/12/03 14:04:31 by afarheen         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

MY_SOURCES = $(wildcard libft/*.c) \
			ft_printf.c \
			ft_putnbr_base.c

MY_OBJS = $(MY_SOURCES:.c=.o)

CFLAGS = -Wall -Werror -Wextra

CC = gcc

all: $(NAME)

$(NAME): $(MY_OBJS)
	$(MAKE) -C libft
	$(CC) $(CFLAGS) -c $(MY_SOURCES)
	ar -rcs $(NAME) $(MY_OBJS)

clean:
	rm -f $(wildcard *.o) $(wildcard libft/*.o)

fclean:  clean
	rm -f $(NAME) libft/libft.a

re: fclean all
