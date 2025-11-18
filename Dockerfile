# Imagem enxuta com Java 17 (substitui o antigo openjdk:17)
FROM eclipse-temurin:17-jdk-alpine

# Diretório de trabalho dentro do container
WORKDIR /ac2_ca

# Copia o JAR gerado pelo Maven para dentro da imagem
# (o Maven está gerando target/ac2_ca-0.0.1-SNAPSHOT.jar)
COPY target/ac2_ca-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta em que a aplicação Spring Boot vai rodar
EXPOSE 8585

# Comando para subir a aplicação quando o container iniciar
CMD ["java", "-jar", "app.jar"]
