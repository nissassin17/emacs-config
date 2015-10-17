#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <btree.h>
#include <limits.h>

#define MAX_LEN 100000

int main()
{

  /* use btree */
  btinit();

  BTA *btfile;

  /* create new */
  btfile = btcrt("dict_db", 0, FALSE);

  /* importing */
  char tmp[MAX_LEN];
  while (!feof(stdin))
    {

      fgets(tmp, MAX_LEN - 1, stdin);
      if (tmp[0] && tmp[1] && tmp[2] )
	binsky(btfile, tmp, rand()%INT_MAX);

    } /* while */

  /* show */
  btpos(btfile, ZSTART);	/* from beginning */
  BTint val;
  while (!bnxtky(btfile, tmp, &val))
    printf("%s", tmp);

  /* close */
  btcls(btfile);

} /* main */
