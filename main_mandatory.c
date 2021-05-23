#include <stdio.h>
#include "../get_next_line.h"

int	main(int argc, char *argv[])
{
	char			*line;
	int				fd;
	int				ret;
	int				i;

	if ((fd = (argc == 2) ? open(argv[1], O_RDONLY) : 0) == -1)
		return (0);
	line = 0;
	i = 1;
	ret = 0;
	while ((ret = get_next_line(fd, &line)) > 0)
	{
		if (ret == 1 && line != 0)
			printf("$> Line %d: return value: \033[38;2;57;181;74m%-10d\033[0m line content: \033[38;2;57;181;74m%s\033[0m\n", i, ret, (line[0] == 0) ? "(empty string)" : line);
		if (ret == 1 && line == 0)
			printf("$> Line %d: return value: \033[38;2;57;181;74m%-10d\033[0m line content: \033[38;2;222;56;43m%s\033[0m\n", i, ret, "(null)");
		if (ret != 1 && line != 0)
			printf("$> Line %d: return value: \033[38;2;222;56;43m%-10d\033[0m line content: \033[38;2;57;181;74m%s\033[0m\n", i, ret, (line[0] == 0) ? "(empty string)" : line);
		if (ret != 1 && line == 0)
			printf("$> Line %d: return value: \033[38;2;222;56;43m%-10d\033[0m line content: \033[38;2;222;56;43m%s\033[0m\n", i, ret, "(null)");
		free(line);
		i++;
	}
	if (line)
	{
		if (ret == 0 && line != 0)
			printf("$> Line %d: return value: \033[38;2;57;181;74m%-10d\033[0m line content: \033[38;2;57;181;74m%s\033[0m\n", i, ret, (line[0] == 0) ? "(empty string)" : line);
		if (ret == 0 && line == 0)
			printf("$> Line %d: return value: \033[38;2;57;181;74m%-10d\033[0m line content: \033[38;2;222;56;43m%s\033[0m\n", i, ret, "(null)");
		if (ret != 0 && line != 0)
			printf("$> Line %d: return value: \033[38;2;222;56;43m%-10d\033[0m line content: \033[38;2;57;181;74m%s\033[0m\n", i, ret, (line[0] == 0) ? "(empty string)" : line);
		if (ret != 0 && line == 0)
			printf("$> Line %d: return value: \033[38;2;222;56;43m%-10d\033[0m line content: \033[38;2;222;56;43m%s\033[0m\n", i, ret, "(null)");
		free(line);
	}
	return (0);
}
