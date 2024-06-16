# Use a imagem oficial do MySQL 8.0
FROM mysql:8.0

# Defina variáveis de ambiente para configurar o MySQL
ENV MYSQL_DATABASE BANCO_DADOS_IT_TALENT
ENV MYSQL_ROOT_PASSWORD senha_root

# Copie o arquivo dump.sql para dentro do container (assumindo que dump.sql está na pasta scripts)
COPY ./scripts/dump.sql /docker-entrypoint-initdb.d/

# Exponha a porta 3306
EXPOSE 3306
