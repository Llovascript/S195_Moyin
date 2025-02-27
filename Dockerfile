#SO y python
FROM python:3.12-slim
#crear carpeta de trabajo
WORKDIR /app
#importar el proyecto a la carpeta
COPY . /app
#instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt
#exponer el puerto
EXPOSE 5000
#ejecutar proyecto
CMD ["python", "app.py"]