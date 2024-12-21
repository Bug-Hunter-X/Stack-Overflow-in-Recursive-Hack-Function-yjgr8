function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error for large values of x because the recursive calls to foo() will exceed the maximum recursion depth allowed by the Hack runtime.  The solution involves using iteration instead of recursion.