# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ahalfrun <ahalfrun@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/04 17:15:03 by lajudy            #+#    #+#              #
#    Updated: 2022/03/04 20:47:57 by ahalfrun         ###   ########.fr        #
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