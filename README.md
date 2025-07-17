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
```
Eso configurará automáticamente:

    El plugin dual-function-keys

    Las reglas en YAML (/etc/interception/dual-function-keys.yml)

    El daemon udevmon como servicio systemd

    El mapeo de KEY_RIGHTALT con soporte dual

🔧 ¿Qué hace exactamente?

Este mapeo:

- KEY: KEY_RIGHTALT
  TAP: KEY_RIGHTALT
  HOLD: KEY_SYSRQ

Permite:

    Tap corto (normal): Alt derecho

    Mantener pulsado (>3s): PrintScreen

Ideal para teclados donde Alt derecho no se usa (ej. layout español o desarrolladores que trabajan con inglés).
📸 Demo (captura de pantalla)

⚠️ Problemas conocidos

    HOLD_MILLISEC no funciona en versiones antiguas (bug en el plugin)

    Es necesario usar TAP_MILLISEC: 3000 (3 segundos) como umbral de espera

    A veces requiere reiniciar udevmon con sudo systemctl restart udevmon

🧩 Personalización

Puedes editar /etc/interception/dual-function-keys.yml para usar otra tecla o cambiar HOLD por otra acción, como abrir un programa:

HOLD: KEY_F13  # y luego mapear F13 con otra herramienta como xdotool

💡 Créditos y ayuda

Este proyecto fue creado y probado por Jorge Toledo (@ifjtoledo) y documentado paso a paso con la ayuda de [ChatGPT 4o].

¡Aporta con mejoras, sugerencias o issues! 🙌
