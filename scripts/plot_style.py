"""Utility to set a consistent plot style for matplotlib/Seaborn plots."""

from __future__ import annotations

import matplotlib.pyplot as plt
import seaborn as sns


def set_plot_style() -> None:
    """Apply a simple, clean aesthetic for plots.

    This configures Seaborn and matplotlib to use a whitegrid style,
    a pleasant default color palette, and removes the top and right
    spines for clarity.
    """
    sns.set_theme(context="notebook", style="whitegrid", palette="Set2", font_scale=1.2)
    plt.rcParams["axes.spines.top"] = False
    plt.rcParams["axes.spines.right"] = False


__all__ = ["set_plot_style"]
