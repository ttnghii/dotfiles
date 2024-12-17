#!/bin/bash

# Function to print a header for each section
print_header() {
  echo "========================================"
  echo "$1"
  echo "========================================"
}

# Update system packages with dnf
print_header "Updating DNF Packages"
sudo dnf upgrade --refresh -y

# Update Cargo-installed packages
if command -v cargo &> /dev/null; then
  print_header "Updating Cargo Packages"
  if cargo install --list | grep -q "^cargo-update "; then
    cargo install-update -a
  else
    echo "The 'cargo-update' package is not installed. Installing it now..."
    cargo install cargo-update && cargo install-update -a
  fi
else
  echo "Cargo is not installed or not in PATH. Skipping Cargo updates."
fi

# Update pipx-installed packages
if command -v pipx &> /dev/null; then
  print_header "Updating Pipx Packages"
  pipx upgrade-all
else
  echo "Pipx is not installed or not in PATH. Skipping Pipx updates."
fi

# Update pip3-installed packages
if command -v pip3 &> /dev/null; then
  print_header "Updating Pip3 Packages"
  pip3 install --upgrade pip setuptools wheel
  pip3 list --outdated --format=columns | awk 'NR>2 {print $1}' | while read -r package; do
    echo "Updating $package..."
    pip3 install --upgrade "$package"
  done
else
  echo "Pip3 is not installed or not in PATH. Skipping Pip3 updates."
fi

# # Update Go-installed packages
# if command -v go &> /dev/null; then
#   print_header "Updating Go Packages"
#   GOPATH=$(go env GOPATH)
#   if [ -d "$GOPATH/bin" ]; then
#     for binary in "$GOPATH/bin"/*; do
#       package=$(basename "$binary")
#       echo "Updating $package..."
#       go install "$package@latest" || echo "Failed to update $package"
#     done
#   else
#     echo "No Go binaries found in $GOPATH/bin."
#   fi
# else
#   echo "Go is not installed or not in PATH. Skipping Go updates."
# fi
#
# print_header "All Updates Complete"
# echo "Your system and packages are up-to-date!"
#
