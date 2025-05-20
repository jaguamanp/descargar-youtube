# 🎵 YouTube Downloader - Node.js + Vue + Docker

Una aplicación web que permite descargar videos o audios de YouTube en formato MP4 o MP3, utilizando `youtube-dl-exec` en el backend y una interfaz simple con Vue 3 + Bootstrap 5.

## 🚀 Características

- Descargar videos de YouTube en MP4 o MP3.
- Interfaz moderna y responsiva con Vue 3 y Bootstrap.
- Backend Node.js con Express y `youtube-dl-exec`.
- Servido mediante Docker y Nginx.
- Limpieza automática de archivos temporales.

---

## 📁 Estructura del proyecto

```

tu-proyecto/
├── backend/
│   ├── index.js           # Servidor Node.js
│   ├── package.json
│   ├── Dockerfile
│   └── media/             # Carpeta de archivos temporales
├── frontend/
│   └── index.html         # Interfaz con Vue + Bootstrap
├── docker-compose.yml     # Orquestador Docker
└── README.md

````

---

## 🧱 Requisitos

- Docker
- Docker Compose

---

## ⚙️ Instalación y uso

1. **Clona este repositorio**:
   ```bash
   git clone https://github.com/tu-usuario/youtube-downloader.git
   cd youtube-downloader
````

2. **Levanta los contenedores con Docker Compose**:

   ```bash
   docker-compose up --build
   ```

3. **Accede a la app**:

   * Frontend: [http://localhost:8080](http://localhost:8080)
   * Backend: [http://localhost:3000](http://localhost:3000)

---

## 🌐 API REST

### `POST /download`

Descarga un video o audio desde YouTube.

#### Request JSON:

```json
{
  "url": "https://www.youtube.com/watch?v=abc123",
  "format": "mp3" // o "mp4"
}
```

#### Response:

* Devuelve el archivo como `Content-Disposition: attachment`.

---

## 📦 Tecnologías usadas

* **Node.js** + **Express**
* **youtube-dl-exec**
* **Vue 3** (CDN)
* **Bootstrap 5**
* **Docker** + **Nginx**

---

## 🧹 Limpieza automática

Los archivos temporales se eliminan automáticamente cuando termina la descarga.

---

## 📜 Licencia

MIT © 2025 - \jaguamanp