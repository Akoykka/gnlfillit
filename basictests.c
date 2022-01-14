/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   basictests.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: skoge <skoge@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/01/12 18:53:23 by skoge             #+#    #+#             */
/*   Updated: 2022/01/14 15:41:52 by skoge            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <fcntl.h>

int main(void)
{
char *dest;
char *destctrl;
int fd;
int fdctrl;
int status;
int statusctrl;

fd = open("test", O_RDONLY);
fdctrl = open("test1", O_RDONLY);

statusctrl = ft_get_next_line(fdctrl, destctrl);
status = get_next_line(fd, dest);
printf("gnl:	|%s|\n ctrl_gnl:	|%s|\n", dest, destctrl);

if (strcmp(dest, destctrl) == 0);
	printf("OK");
else
	printf("diff (linep)");

if(strcmp(status, statusctrl) == 0);
	printf("RVAL Ok");
else
	printf("RVAL DIFF");

strdel(dest);
strdel(destctrl);

system(leaks get_next_line);

}