def euler_method(f, x0, y0, xn, h):
    """
    Approximate the solution of dy/dx = f(x, y) using Euler's Method.
    
    Parameters:
    - f: Function representing dy/dx (e.g., lambda x, y: -2 * x * y)
    - x0: Initial x value
    - y0: Initial y value
    - xn: Final x value
    - h: Step size
    
    Returns:
    - List of (x, y) pairs approximating the solution
    """
    x = x0
    y = y0
    solution = [(x, y)]
    
    while x < xn:
        y = y + h * f(x, y)
        x = x + h
        solution.append((x, y))
    
    return solution

# Define the ODE: dy/dx = -2x * y
f = lambda x, y: -2 * x * y

# Parameters
x0 = 0    # Initial x
y0 = 1    # Initial y
xn = 2    # Final x
h = 0.1   # Step size

# Compute the solution
result = euler_method(f, x0, y0, xn, h)

# Print the results
print("x\t\t y (approximated)")
print("-" * 20)
for x, y in result:
    print(f"{x:.1f}\t\t {y:.6f}")