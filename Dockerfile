# 1. Bajamos la "caja" que ya trae Xray (recomendada por el GitHub oficial)
FROM teddysun/xray:latest

# 2. Le decimos a Cloud Run que usaremos el puerto 8080
EXPOSE 8080

# 3. Metemos TU configuración de GitHub dentro de la carpeta de Xray
COPY config.json /etc/xray/config.json

# 4. Arrancamos el programa que ya venía en la "caja"
CMD ["xray", "run", "-config", "/etc/xray/config.json"]
