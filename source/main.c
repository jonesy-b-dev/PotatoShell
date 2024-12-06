#include <stdio.h>
#include <stdlib.h>

int main()
{
	char command[1024];

	while (1)
	{
		printf("potatoShell>$ ");
		if(fgets(command, sizeof(command), stdin) == NULL)
		{
			printf("Error");
			break; 
		}
		printf("You entered: %s", command);
	}
	printf("Exiting PotatoShell");
	return 0;
}
