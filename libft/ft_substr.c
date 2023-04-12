/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pmessett <pmessett@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/12 09:04:26 by pmessett          #+#    #+#             */
/*   Updated: 2023/04/12 11:48:06 by pmessett         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	char	*subs;
	size_t	i;

	subs = (char *)malloc(len - start + 1);
	if (!subs)
		return (NULL);
	i = 0;
	while (s[start] && start < len)
	{
		subs[i] = s[start];
		start++;
		i++;
	}
	subs[i] = '\0';
	return (subs);
}

// int main(void)
// {
//     char const *s = "Nao eh por maldade";
//     unsigned int start = 11;
//     size_t len = 19;
//     printf("String:%s\n", s);
//     printf("Start index:%d\n", start);
//     printf("Length:%zu\n", len);
//     printf("Substring:%s\n", ft_substr(s, start, len));
// }