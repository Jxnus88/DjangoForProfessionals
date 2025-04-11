# Pull base image  

FROM python:3.10.11-slim-bullseye

# Set environment variables  

ENV PIP_DISABLE_PIP_VERSION_CHECK 1

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

# Set work directory  

WORKDIR /code

# Install dependencies  

COPY ./requirements.txt .

RUN pip install -r requirements.txt

# Copy project  

COPY . .

# Expose port (opcional, pero recomendado para desarrollo)

EXPOSE 8000

# Default command (reemplaza esto según tu necesidad)

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]