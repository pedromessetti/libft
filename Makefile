.SILENT:
# Color variables
RED = \033[1;31m
GREEN = \033[1;32m
WHITE = \033[1;37m
RESET = \033[0m

NAME = libft.a

CC = cc

CME = ar -rcs

CFLAGS = -Wall -Wextra -Werror -g -I inc

SRCS = src/ft_isalpha.c src/ft_isalnum.c src/ft_isascii.c src/ft_isnum.c src/ft_isprint.c src/ft_isalpha.c \
src/ft_tolower.c src/ft_toupper.c src/ft_str_is_space.c src/ft_split.c src/ft_strdup.c src/ft_strjoin.c src/ft_strlcat.c \
src/ft_strlcpy.c src/ft_strlen.c src/ft_strncmp.c src/ft_strtrim.c src/ft_substr.c  src/ft_strchr.c \
src/ft_strrchr.c src/ft_strmapi.c src/ft_striteri.c src/ft_strnstr.c src/ft_bzero.c src/ft_memcpy.c \
src/ft_memset.c src/ft_memmove.c src/ft_memchr.c src/ft_memcmp.c src/ft_calloc.c src/ft_atoi.c \
src/ft_itoa.c src/ft_putchar_fd.c src/ft_putstr_fd.c src/ft_putendl_fd.c src/ft_putnbr_fd.c src/ft_putnbr_base_fd.c \

SRCS_BONUS = src_bonus/ft_lstnew.c src_bonus/ft_lstadd_front.c src_bonus/ft_lstadd_back.c src_bonus/ft_lstsize.c \
src_bonus/ft_lstlast.c src_bonus/ft_lstdelone.c src_bonus/ft_lstclear.c src_bonus/ft_lstiter.c src_bonus/ft_lstmap.c \

OBJS = $(SRCS:.c=.o)

OBJS_BONUS = $(SRCS_BONUS:.c=.o)

CHAR = =-=
NUM = 7
REPEATED_CHARS = $(call repeat_char,$(shell seq $(NUM)))

all:	$(NAME)

$(NAME):	$(OBJS) $(OBJS_BONUS)
	$(CME) $(NAME) $(OBJS) $(OBJS_BONUS)
	echo "$(GREEN)$(REPEATED_CHARS)$(RESET)" 
	echo "$(WHITE)	libft"
	echo "$(GREEN)$(REPEATED_CHARS)$(RESET)" 
	echo "$(GREEN)SUCCESSFULLY COMPILED$(RESET)"

clean:
	rm -f $(OBJS) $(OBJS_BONUS)
	@echo "$(GREEN)Sucessfully removed $(WHITE)*.o$(RESET)"

fclean:	clean
	rm -f $(NAME) 
	@echo "$(GREEN)Sucessfully removed $(WHITE)$(NAME)$(RESET)"

re:	fclean all

define repeat_char
$(strip $(if $(firstword $(1)), $(CHAR)$(call repeat_char,$(subst $(firstword $(1)),,$(1)))))
endef