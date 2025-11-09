# False Position Method

def f(x):
    return x**3 - x - 2

def false_position(a, b, tol, max_iter):
    if f(a) * f(b) >= 0:
        return None
    for i in range(max_iter):
        c = (a*f(b) - b*f(a)) / (f(b) - f(a))
        if abs(f(c)) < tol:
            return c
        if f(a) * f(c) < 0:
            b = c
        else:
            a = c
    return c

root = false_position(1, 2, 1e-6, 100)
root
