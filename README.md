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

Para utilizar el script, lo primero que tenemos que hacer es darle permisos de ejecución con chmod +x. Luego lo ejecutamos desde la terminal con ./scriptM08.sh y ya empieza a funcionar automáticamente. El propio script se encarga de comprobar si tenemos instaladas las herramientas necesarias (yt-dlp y ffmpeg), y si no las encuentra, las instala él mismo. Esto hace que no tengamos que preocuparnos de preparar nada previamente.

sudo chmod +x scriptM08.sh
./scriptM08.sh

## Pruebas de Funcionamiento

Hemos hecho una prueba completa para mostrar cómo funciona el script paso a paso. A continuación explicamos lo que se puede ver en cada una de las capturas que hemos incluido.
### 1. Copiar la URL del vídeo

En la primera imagen vemos cómo el script nos pide que introduzcamos una URL de YouTube. Copiamos la dirección del vídeo que queremos procesar y la pegamos directamente. Esto es lo primero que hace siempre el script: pedirnos el vídeo que va a trabajar.

![Copiar URL](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/copiarURL.png?raw=true)

### 2. Pedir los formatos disponibles

Después de eso, el script analiza la URL y nos muestra todos los formatos disponibles para ese vídeo. En esa lista se puede ver la resolución, si incluye o no audio, el tipo de códec y otros detalles técnicos. Nos permite elegir el formato que queramos escribiendo el número correspondiente, así podemos descargar exactamente lo que nos interesa.

![Pedir formato](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/PideFormato.png?raw=true)

### 3. Seleccionar el formato 18

En nuestro caso elegimos el formato número 18, que suele ser un .mp4 con vídeo y audio juntos. Este formato es perfecto para pruebas rápidas porque no hace falta hacer combinaciones raras ni descargar audio y vídeo por separado.

![Formato 18](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/formato18.png?raw=true)

### 4. Ejecución del script

Una vez seleccionado el formato, el script descarga el archivo y empieza a trabajar con ffmpeg. Por un lado, extrae el audio y lo convierte directamente en .mp3. Por otro lado, genera una versión del vídeo sin sonido y la comprime con el códec libx264 para reducir el tamaño. Todo esto se hace automáticamente sin que tengamos que tocar nada.

![Ejecución del script](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/ejecucion.png?raw=true)

### 5. Resultado final: audio y vídeo sin audio generados

Al final, el script nos muestra información técnica tanto del audio como del vídeo. También nos confirma que se han generado dos archivos: uno llamado audio.mp3 y otro llamado video_sin_audio.mp4. Esto demuestra que el proceso ha terminado correctamente y que todo ha funcionado como esperábamos.

![Resultado](https://github.com/sheiilaaa/ScriptVideo/blob/main/img/resultado.png?raw=true)


```bash
