/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abziouzi <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/05 12:57:25 by abziouzi          #+#    #+#             */
/*   Updated: 2022/03/23 22:55:44 by abziouzi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H

# include <unistd.h>
# include <stdio.h>
# include <signal.h>
# include <stdlib.h>

// Server functions
void	ft_handler(int sig, siginfo_t *info, void *ucontext);

// Client functions
int		ft_atoi(const char *str);
void	ft_putstr(char *str);
void	ft_send_message(int server_pid, char letter);

#endif
