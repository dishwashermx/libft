# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ghwa <ghwa@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/06 09:54:51 by ghwa              #+#    #+#              #
#    Updated: 2023/07/25 09:28:11 by ghwa             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_putnbr_fd.c ft_putendl_fd.c ft_putstr_fd.c ft_putchar_fd.c ft_striteri.c ft_strmapi.c ft_itoa.c ft_strdup.c ft_strrchr.c ft_strjoin.c ft_strtrim.c ft_substr.c ft_split.c ft_toupper.c ft_strchr.c ft_tolower.c ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c ft_memset.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_strlcat.c ft_strlcpy.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c ft_strnstr.c
SRCB = ft_lstmap.c ft_lstiter.c ft_lstclear.c ft_lstdelone.c ft_lstnew.c ft_lstlast.c ft_lstsize.c ft_lstadd_front.c ft_lstadd_back.c
OBJECT = ${SRC:.c=.o}
OBJECTB = $(SRCB:.c=.o)
CFLAGS = -c -Wall -Werror -Wextra -I.
NAME = libft.a

all: $(NAME)

$(NAME): $(OBJECT)
	ar crs $(NAME) $(OBJECT)

%.o: %.c
	gcc $(CFLAGS) $<

clean:
	rm -f *.o

bonus: $(NAME) $(OBJECTB)
	ar rcs $(NAME) $(OBJECTB)

fclean: clean
	rm -f $(NAME)
	rm -f a.out

re: fclean all

.PHONY = all clean fclean re bonus
