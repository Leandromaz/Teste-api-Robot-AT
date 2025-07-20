# Teste-api-Robot-AT

🧪 **Teste de API com Robot Framework**

Este projeto demonstra a automação de testes de API utilizando o **Robot Framework**, abordando três cenários distintos para validar funcionalidades e garantir a qualidade das respostas.

> ⚠️ Após realizar o login, copie o token exibido no log e insira-o na variável `${TOKEN}` localizada na pasta `realizaLogin`.  
> ❗ O token é válido por apenas **10 minutos**.

---

## 📌 Objetivo

Automatizar testes de API RESTful com foco em:

- Validação de **status code**
- Verificação de **conteúdo da resposta**
- Testes com diferentes métodos HTTP (`GET`, `POST`, etc.)

---

## 🛠️ Tecnologias Utilizadas

- [Robot Framework](https://robotframework.org/)  
- [RequestsLibrary](https://github.com/MarketSquare/robotframework-requests)

---

## 📁 Estrutura do Projeto
- `Resources/`: Contém os arquivos com todas as **linhas de código** para execução dos testes
- `Arquivo/Json`: Contém os **dados** utilizados nos testes

---

## Execução dos testes
 ```robot -d ./Logs -i [tag] tests```










