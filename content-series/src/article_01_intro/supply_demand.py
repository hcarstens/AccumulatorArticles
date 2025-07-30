import numpy as np
import matplotlib.pyplot as plt

# Model parameters
Qs = 100   # fixed supply quantity
P0 = 10    # initial equilibrium price
r = 0.02   # 2 % continuous demand growth per period
t = np.arange(0, 25)  # 25 periods (e.g. months)

# Baseline linear demand curve: Qd = a - bP.
# Choose a so the initial equilibrium is at (P0, Qs)
a = Qs + 10
b = (a - Qs) / P0

def equilibrium_price(periods):
    """Price that clears the market each period when supply is fixed 
    and demand shifts outward at rate r."""
    shift = np.exp(r * periods)      # multiplicative demand shift
    return (a * shift - Qs) / b      # solve for P

prices = equilibrium_price(t)

# Plot
plt.figure()
plt.plot(t, prices, label="Equilibrium price")
plt.axhline(P0, linestyle="--", label="Initial price $10")
plt.title("Price path with 2 % demand growth & fixed supply")
plt.xlabel("Period")
plt.ylabel("Price")
plt.legend()
plt.tight_layout()

