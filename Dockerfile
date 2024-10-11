# Use uma imagem base do Python
FROM python:3.11

# Defina o diretório de trabalho
WORKDIR /app

# Copie o requirements.txt para o contêiner
COPY requirements.txt .

# Instale as dependências do sistema
RUN apt-get update && apt-get install -y gcc libffi-dev libssl-dev python3-dev

# Instale as dependências do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código da aplicação
COPY . .

# Comando para iniciar o servidor
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
