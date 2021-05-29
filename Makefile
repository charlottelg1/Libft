# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: root <root@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/08 20:10:08 by root              #+#    #+#              #
#    Updated: 2021/05/15 15:16:33 by root             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = ft_memset.c \
	   ft_bzero.c \
	   ft_memccpy.c \
	   ft_memcmp.c \
	   ft_strlen.c \
	   ft_isalpha.c \
	   ft_isdigit.c \
	   ft_isalnum.c \
	   ft_isascii.c \
	   ft_isprint.c \
	   ft_toupper.c \
	   ft_tolower.c \
	   ft_strncmp.c \
	   ft_strlcpy.c \
	   ft_strlcat.c \
	   ft_atoi.c \
	   ft_substr.c \
	   ft_strjoin.c \
	   ft_strtrim.c \
	   ft_split.c \
	   ft_itoa.c \
	   ft_strmapi.c \
	   ft_putchar_fd.c \
	   ft_putstr_fd.c \
	   ft_putendl_fd.c \
	   ft_putnbr_fd.c \
	   ft_calloc.c \
	   ft_memchr.c \
	   ft_memcpy.c \
	   ft_memmove.c \
	   ft_strchr.c \
	   ft_strdup.c \
	   ft_strnstr.c \
	   ft_strrchr.c \

BONUS = ft_lstnew.c \
		ft_lstadd_front.c \
		ft_lstsize.c \
		ft_lstlast.c \
		ft_lstadd_back.c \
		ft_lstdelone.c \
		ft_lstclear.c \
		ft_lstiter.c \
		ft_lstmap.c

OBJS = ${SRCS:.c=.o}

OBJSBONUS = ${BONUS:.c=.o}

HEADER = includes

CC = gcc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

$(NAME): $(OBJS)
	ar rcs ${NAME} ${OBJS}

bonus: ${OBJS} ${OBJSBONUS}
	ar rcs ${NAME} ${OBJS} ${OBJSBONUS}

all: $(NAME)

%.o: %.c
	${CC} -c ${CFLAGS} -o $@ $< -I ${HEADER}

clean:
	${RM} ${OBJS} ${OBJSBONUS}

fclean: clean
	${RM} $(NAME)

re: fclean all
