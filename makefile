# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: akoykka <akoykka@student.hive.fi>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/01/14 15:54:02 by akoykka           #+#    #+#              #
#    Updated: 2022/01/17 14:02:03 by akoykka          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =
../get_next_line/get_next_line.c
ft_get_next_line.c


INCLUDES =
../get_next_line/

LIBRARY =
../get_next_line/libft/libft.a


all : library
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 8/" ../get_next_line/get_next_line.h
	gcc -o basictests basictests.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft
	gcc -o middletests middletests.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft
	gcc -o advancedtests advancedtests.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft
	gcc -o multifd multifd.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft

library :
	make ../get_next_line/libft/ fclean && make ../get_next_line/libft/

basic :
	./basictests

middle :
	./middletests

advanced :
	./advancedtests

errors :
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 1/" ../get_next_line/get_next_line.h
	gcc -o errors1 errors.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 32/" ../get_next_line/get_next_line.h
	gcc -o errors32 errors.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 9999/" ../get_next_line/get_next_line.h
	gcc -o errors9999 errors.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft
	sed -i '' "s/BUFF_SIZE.*/BUFF_SIZE 100000000/" ../get_next_line/get_next_line.h
	gcc -o errors100000000 errors.c $(SRCS) -I $(INCLUDES) -L ../get_next_line/libft/ -ft

multifd :
	./multifd