# 🎬 Script para descargar vídeo y audio de YouTube

Este script lo he hecho como parte de la práctica del módulo de Servicios (UF4) en ASIR. Usa las herramientas `yt-dlp` y `ffmpeg` que hemos trabajado en clase.

## ¿Qué hace?

1. Pide una URL de YouTube.
2. Te deja elegir el formato de vídeo.
3. Separa el audio (mp3) y el vídeo sin sonido (mp4).
4. Muestra la info técnica: duración, bitrate, códecs...

## ¿Qué se necesita?

- `yt-dlp`: lo descarga si no lo tienes.
- `ffmpeg`: lo instala desde apt si no está.

## Cómo se usa

```bash
chmod +x descarga_youtube.sh
./descarga_youtube.sh
