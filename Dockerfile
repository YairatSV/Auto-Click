# Usa la imagen base de Nginx
FROM nginx:latest

# Copia tu configuración personalizada de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copia todos los archivos de tu proyecto al directorio de Nginx
COPY . /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
