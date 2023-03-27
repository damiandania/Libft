/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putendl_fd.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddania-c <ddania-c@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/25 19:40:57 by ddania-c          #+#    #+#             */
/*   Updated: 2023/03/27 15:02:44 by ddania-c         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

// Imprime una cadenad de caracteres str segun el formato de fd
// mas un salto de linea.

#include "../includes/libft.h"

void	ft_putendl_fd(char *s, int fd)
{
	int	i;
	int	ret;

	i = 0;
	if (s)
	{
		while (s[i])
		{
			ret = write (fd, &s[i++], 1);
			if (ret == -1)
			{
				perror("write error");
				exit(1);
			}
		}

	}
	ret = write (fd, "\n", 1);
	if (ret == -1)
		{
			perror("write error");
			exit(1);
		}
}
