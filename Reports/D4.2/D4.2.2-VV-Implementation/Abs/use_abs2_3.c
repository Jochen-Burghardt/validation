
#include "abs2.h"

/*@
    requires (10 <= x < 100) || (-200 < x < -50);

    ensures \result >= 0;
*/
unsigned int use_3(unsigned int x)
{
  if ((x >= 10 && x < 100) || (-100 < x && x < -50))
  {
      int tmp = -1;
      return tmp;
  }

  int a = abs_int(x);
  //@ assert 10 <= a < 200;

  // ...
}

