#! /bin/bash

sep="======================================================================"
alt="----------------------------------------------------------------------"
FILES="../get_next_line.h ../get_next_line.c ../get_next_line_utils.c"

test()
{
	EXEC=$1

	printf "\033[38;2;255;176;0m$sep\n\033[0m\n"
	printf "\033[38;2;255;105;180mtest: file: line_8.\n\033[0m"
	$EXEC test/line_8
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: two_lines_8.\n\033[0m"
	$EXEC test/two_lines_8
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: n_lines_8.\n\033[0m"
	$EXEC test/n_lines_8

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: line_8.\n\033[0m"
	cat test/line_8 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: two_lines_8.\n\033[0m"
	cat test/two_lines_8 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: n_lines_8.\n\033[0m"
	cat test/n_lines_8 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: line_16.\n\033[0m"
	$EXEC test/line_16
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: two_lines_16.\n\033[0m"
	$EXEC test/two_lines_16
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: n_lines_16.\n\033[0m"
	$EXEC test/n_lines_16

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: line_16.\n\033[0m"
	cat test/line_16 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: two_lines_16.\n\033[0m"
	cat test/two_lines_16 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: n_lines_16.\n\033[0m"
	cat test/n_lines_16 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: line_4.\n\033[0m"
	$EXEC test/line_4
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: two_lines_4.\n\033[0m"
	$EXEC test/two_lines_4
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: n_lines_4.\n\033[0m"
	$EXEC test/n_lines_4

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: line_4.\n\033[0m"
	cat test/line_4 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: two_lines_4.\n\033[0m"
	cat test/two_lines_4 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: n_lines_4.\n\033[0m"
	cat test/n_lines_4 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line_4.\n\033[0m"
	$EXEC test/no_line_4
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line_8.\n\033[0m"
	$EXEC test/no_line_8
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line_16.\n\033[0m"
	$EXEC test/no_line_16

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line_4.\n\033[0m"
	cat test/no_line_4 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line_8.\n\033[0m"
	cat test/no_line_8 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line_16.\n\033[0m"
	cat test/no_line_16 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line.\n\033[0m"
	$EXEC test/no_line
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line.\n\033[0m"
	cat test/no_line | $EXEC
}

if [ ! -f "../get_next_line.h" ] || [ ! -f "../get_next_line.c" ] || [ ! -f "../get_next_line_utils.c" ]; then
	printf "error: file is missing!\n"
	exit 0
fi

printf "\033[38;2;255;176;0m\n$sep\n\n"

echo " ██████╗ ███╗   ██╗██╗         ███╗   ███╗███████╗██████╗ ██╗ ██████╗"
echo "██╔════╝ ████╗  ██║██║         ████╗ ████║██╔════╝██╔══██╗██║██╔════╝"
echo "██║  ███╗██╔██╗ ██║██║         ██╔████╔██║█████╗  ██║  ██║██║██║     "
echo "██║   ██║██║╚██╗██║██║         ██║╚██╔╝██║██╔══╝  ██║  ██║██║██║     "
echo "╚██████╔╝██║ ╚████║███████╗    ██║ ╚═╝ ██║███████╗██████╔╝██║╚██████╗"
echo " ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝ ╚═════╝"

printf "\n$sep\n"
printf "\nForbidden functions:\n\n\033[38;2;222;56;43m"
FUN=("[^_]printf(" "[^_]memset(" "[^_]bzero(" "[^_]memcpy(" "[^_]memccpy(" "[^_]memmove(" "[^_]memchr(" "[^_]memcmp(" "[^_]strlen(" "[^_]isspace(" "[^_]isupper(" "[^_]islower(" "[^_]isalpha(" "[^_]isdigit(" "[^_]isalnum(" "[^_]isascii(" "[^_]isprint(" "[^_]toupper(" "[^_]tolower(" "[^_]strchr(" "[^_]strrchr(" "[^_]strcmp(" "[^_]strncmp(" "[^_]strcpy(" "[^_]strncpy(" "[^_]strlcpy(" "[^_]strcat(" "[^_]strncat(" "[^_]strlcat(" "[^_]strstr(" "[^_]strnstr(" "[^_]atoi(" "[^_]atol(" "[^_]itoa(" "[^_]calloc(" "[^_]realloc(" "[^_]strdup(")
K=0
for element in ${FUN[@]}; do
	grep element $FILES
	if [ $? -eq 0 ]; then
		((K++))
	fi
done
if [ $K -eq 0 ]; then
	printf "\033[38;2;57;181;74mCheat free.\n"
fi
printf "\033[38;2;255;176;0m\n$sep\n\nNorm test:\n\n\033[0;38;2;57;181;74m"
norminette libft.h $FILES | grep "OK"
printf "\n\033[0;38;2;222;56;43m"
norminette libft.h $FILES | grep "Error"
printf "\n\033[0m"

printf "\033[0;38;2;255;176;0m\n$sep\n\033[0m"
printf "\033[38;2;255;176;0mCompilation with BUFFER_SIZE=1...\n\033[0m"
gcc -Wall -Wextra -Werror -fsanitize=address -D BUFFER_SIZE=1 main_mandatory.c ../get_next_line.c ../get_next_line_utils.c
test ./a.out

printf "\033[38;2;255;176;0m\n$sep\n\033[0m"
printf "\033[38;2;255;176;0mCompilation with BUFFER_SIZE=8...\n\033[0m"
gcc -Wall -Wextra -Werror -fsanitize=address -D BUFFER_SIZE=8 main_mandatory.c ../get_next_line.c ../get_next_line_utils.c
test ./a.out

printf "\033[38;2;255;176;0m\n$sep\n\033[0m"
printf "\033[38;2;255;176;0mCompilation with BUFFER_SIZE=9999...\n\033[0m"
gcc -Wall -Wextra -Werror -fsanitize=address -D BUFFER_SIZE=9999 main_mandatory.c ../get_next_line.c ../get_next_line_utils.c
test ./a.out

printf "\033[38;2;255;176;0m\n%70s\n%70s\n%70s\033[0m\n" "Test finished." "@2021, 42 GNL Tester." "https://github.com/gmarcha"

rm ./a.out