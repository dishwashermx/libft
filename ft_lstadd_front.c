/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd_front.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ghwa <ghwa@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/18 16:48:03 by ghwa              #+#    #+#             */
/*   Updated: 2023/11/21 11:00:41 by ghwa             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstadd_front(t_list **lst, t_list *new)
{

	if (lst && new)
	{
		(*lst)-> prev = new;
		new -> next = *lst;
		new -> prev = NULL;
		*lst = new;
	}
}
