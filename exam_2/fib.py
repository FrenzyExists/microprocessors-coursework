def fib(n, k, e=1):
    if k != 0:
        fib(n + e, k-1, n)
        print(n)
    else:
        print(n)
        return n

def fib_wrapper(n):
    return fib(0, n-1)


fib_wrapper(9)

