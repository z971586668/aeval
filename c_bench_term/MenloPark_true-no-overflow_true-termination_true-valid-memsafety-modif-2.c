extern int __VERIFIER_nondet_int(void);

int main()
{
  int x, y, z;
  x = __VERIFIER_nondet_int();
  if (y <= 1) return 0;
  if (y % 2 != 0) return 0;
  
  z = 1;
  while (x > 0) {
    x = x - y;
    y = y - z;
    z = -z;
  }
  return 0;
}
