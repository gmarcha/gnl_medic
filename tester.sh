#! /bin/bash

sep="======================================================================"
alt="----------------------------------------------------------------------"

test()
{
	EXEC=$1

	printf "\033[38;2;255;176;0m$sep\n\033[0m\n"
	printf "\033[38;2;255;105;180mtest: file: line_8.\n\033[0m"
	$EXEC line_8
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: two_lines_8.\n\033[0m"
	$EXEC two_lines_8
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: n_lines_8.\n\033[0m"
	$EXEC n_lines_8

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: line_8.\n\033[0m"
	cat line_8 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: two_lines_8.\n\033[0m"
	cat two_lines_8 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: n_lines_8.\n\033[0m"
	cat n_lines_8 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: line_16.\n\033[0m"
	$EXEC line_16
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: two_lines_16.\n\033[0m"
	$EXEC two_lines_16
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: n_lines_16.\n\033[0m"
	$EXEC n_lines_16

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: line_16.\n\033[0m"
	cat line_16 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: two_lines_16.\n\033[0m"
	cat two_lines_16 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: n_lines_16.\n\033[0m"
	cat n_lines_16 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: line_4.\n\033[0m"
	$EXEC line_4
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: two_lines_4.\n\033[0m"
	$EXEC two_lines_4
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: n_lines_4.\n\033[0m"
	$EXEC n_lines_4

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: line_4.\n\033[0m"
	cat line_4 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: two_lines_4.\n\033[0m"
	cat two_lines_4 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: n_lines_4.\n\033[0m"
	cat n_lines_4 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line_4.\n\033[0m"
	$EXEC no_line_4
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line_8.\n\033[0m"
	$EXEC no_line_8
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line_16.\n\033[0m"
	$EXEC no_line_16

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line_4.\n\033[0m"
	cat no_line_4 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line_8.\n\033[0m"
	cat no_line_8 | $EXEC
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line_16.\n\033[0m"
	cat no_line_16 | $EXEC

	printf "\033[38;2;255;105;180m$sep\n\033[0m"
	printf "\033[38;2;255;105;180mtest: file: no_line.\n\033[0m"
	$EXEC no_line
	printf "\033[38;2;255;105;180m$alt\n\033[0m"
	printf "\033[38;2;255;105;180mtest: stdin: no_line.\n\033[0m"
	cat no_line | $EXEC
}

printf "\033[38;2;255;176;0m\n$sep\n\n"

echo " ██████╗ ███╗   ██╗██╗         ███╗   ███╗███████╗██████╗ ██╗ ██████╗"
echo "██╔════╝ ████╗  ██║██║         ████╗ ████║██╔════╝██╔══██╗██║██╔════╝"
echo "██║  ███╗██╔██╗ ██║██║         ██╔████╔██║█████╗  ██║  ██║██║██║     "
echo "██║   ██║██║╚██╗██║██║         ██║╚██╔╝██║██╔══╝  ██║  ██║██║██║     "
echo "╚██████╔╝██║ ╚████║███████╗    ██║ ╚═╝ ██║███████╗██████╔╝██║╚██████╗"
echo " ╚═════╝ ╚═╝  ╚═══╝╚══════╝    ╚═╝     ╚═╝╚══════╝╚═════╝ ╚═╝ ╚═════╝"

printf "\033[0;38;2;255;176;0m\n$sep\n\033[0m"
printf "\033[38;2;255;176;0mCompilation with BUFFER_SIZE=1...\n\033[0m"
gcc -Wall -Wextra -Werror -D BUFFER_SIZE=1 main_gnl.c ../get_next_line.c ../get_next_line_utils.c
test ./a.out

printf "\033[38;2;255;176;0m\n$sep\n\033[0m"
printf "\033[38;2;255;176;0mCompilation with BUFFER_SIZE=8...\n\033[0m"
gcc -Wall -Wextra -Werror -D BUFFER_SIZE=8 main_gnl.c ../get_next_line.c ../get_next_line_utils.c
test ./a.out

printf "\033[38;2;255;176;0m\n$sep\n\033[0m"
printf "\033[38;2;255;176;0mCompilation with BUFFER_SIZE=9999...\n\033[0m"
gcc -Wall -Wextra -Werror -D BUFFER_SIZE=9999 main_gnl.c ../get_next_line.c ../get_next_line_utils.c
test ./a.out

printf "\033[38;2;255;176;0m\n%70s\n%70s\n%70s\033[0m\n" "Test finished." "@2021, 42 GNL Tester." "https://github.com/gmarcha"

rm ./a.out