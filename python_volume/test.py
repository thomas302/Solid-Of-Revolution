from math import pi
import numpy as np

x1 = 1
x2 = 3
step = 0.05

def f_(x: int) -> int:
    return (1/x)

f_x_points = []

for i in np.arange(x1, x2+step, step):
    f_x_points.append([i, f_(i)]);

print("f(x) Points")
print(f_x_points)

shell_volumes = []
for i in f_x_points:
    shell_volumes.append(2*pi*i[0]*i[1]*step)

print("individual Shell Volumes")
print(shell_volumes)

volume = 0
for i in shell_volumes:
    volume = volume + i

print("Volume")
print(volume)
