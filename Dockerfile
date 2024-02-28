# Use uma imagem base do Python
FROM python:3.9-alpine

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instale as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copie o conteúdo do diretório atual para o diretório de trabalho
COPY . .

# Defina as variáveis de ambiente, se necessário
# ENV MY_VAR=value

# Exponha a porta em que o aplicativo estará em execução (substitua 8000 pela porta do seu aplicativo, se necessário)
EXPOSE 8000

# Comando para executar o aplicativo
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]