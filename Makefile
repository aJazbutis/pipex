# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ajazbuti <ajazbuti@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/30 20:21:53 by ajazbuti          #+#    #+#              #
#    Updated: 2022/02/26 15:27:57 by ajazbuti         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

CFLAGS = -Wall -Werror -Wextra

RM = rm -rf

CC = gcc

SRC = pipex.c parsing.c piping.c extras.c ft_split.c extras2.c extras3.c\
	  get_next_line.c get_next_line_utils.c

SRC_D = ./sources/

INC = -I./includes

all: ${NAME}

${NAME}: ${addprefix ${SRC_D}, ${SRC}}
	${CC} ${CFLAGS} ${INC} ${addprefix ${SRC_D}, ${SRC}} -o ${NAME}

bonus: re 

clean:
	${RM} *.o
	${RM} ./pipex.dSYM

fclean: clean
	${RM} ${NAME}

re: fclean all 

.PHONY: all clean fclean re bonus
