NAME = libft.a

HEADER = includes/libft.h
##################

SRC = ft_isalpha.c\
	ft_memchr.c\
	ft_memset.c\
	ft_strlen.c\
	ft_tolower.c\
	ft_atoi.c\
	ft_isascii.c\
	ft_memcmp.c\
	ft_strchr.c\
	ft_strncmp.c\
	ft_toupper.c\
	ft_bzero.c\
	ft_isdigit.c\
	ft_memcpy.c\
	ft_strlcat.c\
	ft_strnstr.c\
	ft_isalnum.c\
	ft_isprint.c\
	ft_memmove.c\
	ft_strlcpy.c\
	ft_strrchr.c\
	ft_calloc.c\
	ft_strdup.c\
	ft_substr.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_split.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_itoa.c\
	ft_strmapi.c\
	ft_striteri.c\

CC = cc

OBJ = $(SRC:.c=.o)

FLAGS = -Wall -Werror -Wextra

#########ACTION######################################
all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
#### Va creer archives
#
#	#$<: the name of the first prerequisite
#	#$^:the name of the first prerequisite separated by spaces
#	#$?: prerequisites newer than the target separated by spaces
#	#$@:call for the name of the executable name

%.o:	%.c
	cc $(FLAGS) -c $< -o $@
#### Va recompiler si .c different du .o

# so:
# 	$(CC) -nostartfiles -fPIC -c $(CFLAGS) $(SRC)
# 	cc -nostartfiles -shared -o libft.so $(OBJ) -ldl

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re