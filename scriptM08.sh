#!/bin/bash

# Script hecho para descargar un vídeo de YouTube y extraer el audio por separado
# Usamos yt-dlp y ffmpeg como vimos en clase

echo "Código de Sheiiilaaa :)"
echo "Comprobando que yt-dlp y ffmpeg estén instalados..."

if ! command -v yt-dlp &> /dev/null; then
    echo "Instalando yt-dlp desde GitHub..."
    sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O /usr/local/bin/yt-dlp
    sudo chmod +x /usr/local/bin/yt-dlp
else
    echo "yt-dlp ya está instalado :)"
fi

if ! command -v ffmpeg &> /dev/null; then
    echo "Instalando ffmpeg (para cortar y convertir vídeos)..."
    sudo apt update
    sudo apt install -y ffmpeg
else
    echo "ffmpeg ya está instaladoo."
fi

read -p "Pega aquí la URL del vídeo de YouTube que quieres utilizar: " url

echo "Obteniendo los formatos disponibles..."
yt-dlp -F "$url"

read -p "Escribe el número del formato de vídeo que quieres descargar (por ejemplo 18): " formato

yt-dlp -f "$formato" -o "video_original.%(ext)s" "$url"
video=$(ls video_original.*)

# Sacamos el audio en mp3 (como hicimos en clase con -map a)
ffmpeg -i "$video" -q:a 0 -map a audio.mp3

# Quitamos el audio del vídeo y lo comprimimos con x264
ffmpeg -i "$video" -an -vcodec libx264 -crf 28 video_sin_audio.mp4

# Mostramos información técnica (bitrate, duración, códec…)
echo ""
echo "Infoo del audiio:"
ffmpeg -i audio.mp3

echo ""
echo "Info del vídeo sin audio:"
ffmpeg -i video_sin_audio.mp4

echo ""
echo "Proceso terminado :). Archivos generados:"
echo "- audio.mp3"
echo "- video_sin_audio.mp4"
