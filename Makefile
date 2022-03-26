# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahalfrun <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/26 19:42:31 by ahalfrun          #+#    #+#              #
#    Updated: 2022/03/26 19:42:35 by ahalfrun         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	error_handling.c ft_atoi.c libft.c\
		stack_actions.c stack_actions2.c stack_sort.c\
		stack_sort_utils.c\
		stack_utils.c stack_utils2.c\
		transfer_to_a.c transfer_to_a2.c\
		ft_split.c main.c


HDRS =	push_swap.h

OBJS = 	$(SRCS:.c=.o)


NAME = 	push_swap


CC = 	gcc
CFLAGS = -Wall -Wextra -Werror
RM = 	rm -f

all:	$(NAME)

$(OBJS): Makefile $(HDRS)

.c.o:
	$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

$(NAME):$(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
