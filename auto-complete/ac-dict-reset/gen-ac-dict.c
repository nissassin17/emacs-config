#include <stdio.h>
#include <string.h>
int main()
{
  char c;
  char prev = 0;
  char prev_print = 0;

  while (!feof(stdin))
    {

      int nbr;			/* number of { be closed */

      c = getchar();

      /* comment in modern style '//' */
      if (c == '/' && prev == '/')
	while ((c = getchar()) != '\n' && c != EOF)
	  ;

      /* comment old style '/* *\/' */ 
      if (c == '*' && prev == '/')
	while ((c = getchar()) != '/' && c != EOF || prev != '*')
	  prev = c;

      /* brace */
      if (c == '{')
	{
	  nbr = 1;
	  while (nbr > 0 && c != EOF)
	    {
	      c = getchar();
	      if (c == '}')
		nbr--;
	      if (c == '{')
		nbr ++;
	    }
	}

      prev = c;

      char now_print = ((isalnum(c) || c == '_') ? c : '\n');
      if (now_print != '\n' || prev_print != '\n')
      	putchar(now_print);
      prev_print = now_print;

    } /* while */

} /* main */
