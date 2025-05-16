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


chmod +x descarga_youtube.sh
./descarga_youtube.sh

## Pruebas de Funcionamiento

### 1. Copiar la URL del vídeo
![Copiar URL](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/copiarURL.png?raw=true)

### 2. Pedir los formatos disponibles
![Pedir formato](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/PideFormato.png?raw=true)

### 3. Seleccionar el formato 18
![Formato 18](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/formato18.png?raw=true)

### 4. Ejecución del script
![Ejecución del script](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/ejecucion.png?raw=true)

### 5. Resultado final: audio y vídeo sin audio generados
![Resultado](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/resultado.png?raw=true)


```bash
