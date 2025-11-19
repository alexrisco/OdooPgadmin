# Usa la imagen oficial de pgAdmin 4 como base.
# Esta imagen ya incluye todo lo necesario para ejecutarse.
FROM dpage/pgadmin4:latest

# --- Variables de Entorno de pgAdmin ---

# Render recomienda usar Secrets para la contraseña,
# pero para la configuración básica, se definen aquí.
# Puede reemplazar estos valores con variables de entorno de Render si lo prefiere.

# Correo electrónico de inicio de sesión por defecto
ENV PGADMIN_DEFAULT_EMAIL=admin@example.com

# Contraseña de inicio de sesión por defecto
ENV PGADMIN_DEFAULT_PASSWORD=admin123

# --- Configuración del Puerto ---

# La imagen de pgAdmin 4 por defecto escucha en el puerto 80 (PGADMIN_LISTEN_PORT=80).
# Es crucial documentar que el puerto interno es 80.
EXPOSE 80

# NOTA: No necesitamos la línea CMD. La imagen base ya sabe cómo ejecutar pgAdmin
# usando las variables de entorno definidas arriba.
