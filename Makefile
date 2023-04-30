# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abziouzi <abziouzi@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/05 15:40:28 by abziouzi          #+#    #+#              #
#    Updated: 2023/04/29 23:12:31 by abziouzi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Compiler and flags
CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror

# Compilation rule
all		:	server client

server	:	server.c minitalk.h
			$(CC) $(CCFLAGS) server.c -o server
			@ clear

client	:	client.c minitalk.h
			$(CC) $(CCFLAGS) client.c -o client
			@ clear

bonus	:	client_bonus.c server_bonus.c minitalk_bonus.h
			$(CC) $(CCFLAGS) server_bonus.c  -o server_bonus
			$(CC) $(CCFLAGS) client_bonus.c  -o client_bonus
			@ clear

clean	:
			@rm -rf server client
			@ clear

fclean	:	clean
			@rm -rf server client server_bonus client_bonus
			@ clear

re		:	fclean all


.PHONY: all bonus clean fclean re
