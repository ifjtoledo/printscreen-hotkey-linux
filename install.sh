#!/bin/bash
set -e

echo "🔧 Instalando Interception Tools y dual-function-keys..."

sudo apt update
sudo apt install -y interception-tools interception-dual-function-keys

echo "📁 Copiando archivos de configuración..."

sudo mkdir -p /etc/interception
sudo cp dual-function-keys.yml /etc/interception/dual-function-keys.yml
sudo cp udevmon.yaml /etc/interception/udevmon.yaml

echo "🌀 Recargando servicio udevmon..."

sudo systemctl daemon-reexec
sudo systemctl restart udevmon

echo "✅ Listo. Ahora puedes mantener Alt Derecho por 3 segundos para capturar pantalla."
