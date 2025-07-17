# 🖼️ printscreen-hotkey-linux

Mapea una tecla poco usada (como `Alt Derecho`) para que se comporte como **PrintScreen** al mantenerla presionada, y conserve su función original cuando se toca brevemente. Ideal para usuarios que desean una forma práctica de capturar pantalla sin perder funcionalidad esencial.

---

## 🎯 Objetivo

Permitir que una **misma tecla realice dos funciones**:

- ✅ TAP (pulsación corta): conserva el comportamiento normal (`Alt Derecho`)
- 📸 HOLD (pulsación larga > 3s): activa `PrintScreen` (`KEY_SYSRQ`)

---

## 🛠️ Requisitos

- Linux (tested on Pop!_OS / Ubuntu 22.04+)
- Acceso a `sudo`
- Herramienta [`interception-tools`](https://gitlab.com/interception/linux/tools)
- Plugin [`dual-function-keys`](https://gitlab.com/interception/linux/plugins/dual-function-keys)

---

## 🚀 Instalación rápida

```bash
git clone https://github.com/ifjtoledo/printscreen-hotkey-linux.git
cd printscreen-hotkey-linux
chmod +x install.sh
sudo ./install.sh
