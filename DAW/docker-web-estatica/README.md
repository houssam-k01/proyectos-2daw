# Página web estática con Docker y Nginx

Imagen propia a partir de un Dockerfile que copia el `index.html` a Nginx.

```bash
docker build -t image-mi-web-estatica .
docker run -d -p 8081:80 --name container-mi-web-estatica image-mi-web-estatica
docker container ls
```

- `-d`: el contenedor va en segundo plano.
- `-p 8081:80`: el puerto 8081 de la máquina va al 80 del contenedor (Nginx).
- `--name`: nombre del contenedor.

Se ve en `http://localhost:8081` (o `http://IP_DE_LA_VM:8081` desde Windows si lo haces en la máquina virtual).

Para pararlo y borrarlo:

```bash
docker stop container-mi-web-estatica
docker rm container-mi-web-estatica
```

## Instalar Docker en Ubuntu

```bash
sudo apt install -y docker.io
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
docker run hello-world
```

Después del `usermod` hay que cerrar sesión para poder usar Docker sin `sudo`.
