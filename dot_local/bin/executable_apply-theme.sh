#!/bin/bash

# Apply theme script for matugen
# Usage: ./apply-theme.sh Dark|Light

MODE_CAPITALIZED="$1"
MODE_LOWER=$(echo "$MODE_CAPITALIZED" | tr '[:upper:]' '[:lower:]')

# Reset GTK theme first
gsettings set org.gnome.desktop.interface gtk-theme ""

# Apply GTK theme (lowercase)
gsettings set org.gnome.desktop.interface gtk-theme "adw-gtk3-$MODE_LOWER"

# Set color scheme preference (lowercase)
dconf write /org/gnome/desktop/interface/color-scheme "'prefer-$MODE_LOWER'"

# Set icon theme (capitalized)
dconf write /org/gnome/desktop/interface/icon-theme "'Papirus-$MODE_CAPITALIZED'"

echo "Applied theme: $MODE_CAPITALIZED (GTK: adw-gtk3-$MODE_LOWER, Icons: Papirus-$MODE_CAPITALIZED)"
