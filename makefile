# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akoykka <akoykka@student.hive.fi>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/14 15:54:02 by akoykka           #+#    #+#              #
#    Updated: 2022/01/14 19:41:40 by akoykka          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =
../get_next_line/get_next_line.c


INCLUDES =
../get_next_line/
../get_next_line/libft/

LIBRARY =
../get_next_line/libft/libft.a


all :

basic : library
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 8/" ../get_next_line/get_next_line.h
	gcc basictests.c $(SRCS) -I $(INCLUDES) -L libft/ -libft

library :
	make ../get_next_line/libft/ fclean && make ../get_next_line/libft/

middle : library
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 16/" ../get_next_line/get_next_line.h

advanced : library
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 16/" ../get_next_line/get_next_line.h

error : library

multifd : library