# Teste-api-Robot-AT

🧪 Teste API com Robot Framework
Este projeto demonstra a automação de testes de API utilizando o Robot Framework, abordando três cenários distintos para validar funcionalidades e garantir a qualidade das respostas.

Execute o login e pegue o token no log e coloque na variavel ```${TOKEN}```, na pasta realizaLogin(lembrando que o token só dura é valido durante 10 min)

📌 Objetivo
Automatizar testes de API RESTful com foco em:
• 	Validação de status code
• 	Verificação de conteúdo da resposta
• 	Testes com diferentes métodos HTTP (GET, POST, etc.)

🛠️ Tecnologias Utilizadas
• 	Robot Framework
• 	Requests Library
📁 Estrutura do Projet
 • 	Resources
   - Contém  os arquivos com  todas as linhas de codigo, pra fazer os testes executarem
 •  Arquivo/Json
   - Contém os json do swagger
 •   Tests
   - Contém todos os cenários de testes
 •  Arquivo settings.json
   - dentro dele estão todos os resouces dos arquivos que estão armazenadas dentro da Pasta Resources
 
 🚀 Como Executar os Testes
- Instale as dependências:
```pip install robotframework```
```pip install robotframework-requests```

- Execute os testes utilizando uma tag específica e salvando os relatórios na pasta Logs:
```robot -d ./Logs -i tag tests```
- ```-d ./Logs```: define o diretório onde os relatórios serão salvos.
- ```-i tag```: executa apenas os testes que possuem a tag especificada.
- ```tests```: pasta onde estão os cenários de teste.


📊 Relatórios
Após a execução, os arquivos ```report.html``` e ```log.html``` serão gerados automaticamente com os resultados detalhados dos testes(copie o link dos arquivos e abra no navegador)







