/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstsize.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jchakir <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/19 19:00:34 by jchakir           #+#    #+#             */
/*   Updated: 2021/11/19 19:02:10 by jchakir          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_lstsize(t_list *lst)
{
	int	i;

	if (! lst)
		return (0);
	i = 0;
	while (lst->next)
	{
		lst = lst->next;
		i++;
	}
	return (i + 1);
}
