#!/bin/bash

# Installer Node Version Manager (NVM)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Charger NVM dans l'environnement actuel
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Installer Node.js (remplacer 16.20.0 par la version souhaitée)
nvm install 16.20.0

# Vérifier la version de Node.js installée
node --version

# Vérifier la version de NPM installée
npm --version

# Télécharger et installer Foundry
curl -L https://foundry.paradigm.xyz | bash

# Lancer Foundry
foundryup

# Installer Python3
sudo apt-get update
sudo apt-get install python3 -y

# Vérifier la version de Python3 installée
python3 --version

# Installer slither
python3 -m pip install slither-analyzer

# Installer Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Charger Rust dans l'environnement actuel
source $HOME/.cargo/env

# Installer Aderyn via Cargo
cargo install aderyn

# Vérifier l'installation de Aderyn
aderyn --version

# Fin du script
echo "Installation terminée."
