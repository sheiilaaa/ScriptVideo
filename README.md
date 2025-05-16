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

Para utilizar el script, lo primero que tenemos que hacer es darle permisos de ejecución con **chmod +x**. Luego lo ejecutamos desde la terminal y ya empieza a funcionar automáticamente. El propio script se encarga de comprobar si tenemos instaladas las herramientas necesarias (`yt-dlp` y `ffmpeg`), y si no las encuentra, las instala él mismo.

<p style="color:#a259ff"><strong>sudo chmod +x scriptM08.sh</strong></p>  
<p style="color:#a259ff"><strong>./scriptM08.sh</strong></p>

---

##  Pruebas de Funcionamiento

Hemos hecho una prueba completa para mostrar cómo funciona el script paso a paso. A continuación explicamos lo que se puede ver en cada una de las capturas que hemos incluido.

### 1. Ejecución del script

Se ejecuta este y se comprueba si las herramientas que necesitamos estan, en este caso no lo estan así que las instala.

<p align="center">
  <img src="https://github.com/sheiilaaa/ScriptVideo/blob/main/img/ejecucion.png?raw=true" alt="Ejecución" />
</p>

### 2. Copiar la URL del vídeo

En la primera imagen vemos cómo el script nos pide que introduzcamos una URL de YouTube. Copiamos la dirección del vídeo que queremos y la pegamos directamente.

<p align="center">
  <img src="https://github.com/sheiilaaa/ScriptVideo/blob/main/img/copiarURL.png?raw=true" alt="Copiar URL" />
</p>

### 3. Pedir los formatos disponibles

El script analiza la URL y nos muestra todos los formatos disponibles. Podemos elegir el que más nos convenga escribiendo su número.

<p align="center">
  <img src="https://github.com/sheiilaaa/ScriptVideo/blob/main/img/PideFormato.png?raw=true" alt="Pedir formato" />
</p>

### 3. Seleccionar el formato 18

Elegimos el formato número 18, que suele ser un `.mp4` con vídeo y audio juntos. Ideal para esta prueba. Aunque se puede pedir por separado como se pied en la prueba pero en este caso el formato 22 no estaba disponible por el vídeo escogido.

<p align="center">
  <img src="https://github.com/sheiilaaa/ScriptVideo/blob/main/img/formato18.png?raw=true" alt="Formato 18" />
</p>


### 5. Resultado final

Nos muestra los archivos generados y su información técnica.

<p align="center">
  <img src="https://github.com/sheiilaaa/ScriptVideo/blob/main/img/resultado.png?raw=true" alt="Resultado" />
</p>
