NAME	= test

CFLAGS	=	-W -Wall -Wextra

SRC =	src/main.c \

OBJ = $(SRC:.c=.o)


all:	$(NAME)

$(NAME):	$(OBJ)
	gcc $(SRC) -o $(NAME) -I../include $(CFLAGS)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
