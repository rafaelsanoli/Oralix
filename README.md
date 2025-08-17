Sobre o Projeto
Oralix é um sistema de gestão para clínicas odontológicas projetado para digitalizar e otimizar todas as operações do dia a dia. A plataforma busca eliminar o uso de papel, centralizar as informações de forma segura e aprimorar a comunicação e a experiência do paciente.

A solução é dividida em duas frentes principais:

** Plataforma Web:** Um painel administrativo robusto para dentistas e secretárias gerenciarem agendamentos, prontuários eletrônicos, tratamentos, finanças e muito mais.

** Aplicativo Mobile (iOS & Android):** Uma interface intuitiva para que os pacientes possam agendar consultas, acessar seus exames e receitas, e acompanhar seus tratamentos na palma da mão.

** Principais Funcionalidades**
|

| Funcionalidade | Plataforma Web (Clínica) | App Mobile (Paciente) |
| Gestão de Agenda | ✅ | - |
| Agendamento Online | ✅ | ✅ |
| Prontuário Eletrônico | ✅ | - |
| Odontograma Digital | ✅ | - |
| Plano de Tratamento | ✅ | ✅ |
| Acesso a Exames e Receitas | ✅ | ✅ |
| Controle Financeiro | ✅ | ✅ |
| Gestão de Pacientes | ✅ | - |
| Notificações e Lembretes | ✅ | ✅ |

** Arquitetura e Tecnologias**
O projeto é construído como um Monorepo utilizando pnpm workspaces, o que facilita o compartilhamento de código e a manutenção centralizada. A stack de tecnologias foi escolhida para garantir performance, escalabilidade e uma excelente experiência de desenvolvimento.

| Camada | Tecnologia | Framework / Biblioteca | Linguagem |
| Backend | Node.js | NestJS | TypeScript |
| Banco de Dados | PostgreSQL | Prisma ORM | SQL |
| Web App (Clínica) | React | Vite + Mantine UI | TypeScript |
| Mobile App (Paciente) | React Native | Expo | TypeScript |

** Fluxo da Aplicação**
A interação entre as plataformas foi desenhada para ser fluida e em tempo real:

Agendamento: O Paciente, através do app mobile, seleciona um horário disponível na agenda de um profissional.

Registro: A requisição é enviada para a API Backend, que valida as informações e salva o agendamento no banco de dados.

Notificação: O sistema notifica a Plataforma Web, e a consulta aparece instantaneamente na agenda do profissional.

Consulta: Durante a consulta, o Dentista utiliza a plataforma web para acessar o prontuário, atualizar o odontograma e registrar os procedimentos realizados.

Documentos: Ao final, o profissional pode anexar um Raio-X ou gerar uma receita. O documento é salvo pela API e fica imediatamente disponível para o Paciente em seu aplicativo.

** Começando (Getting Started)**
Siga os passos abaixo para configurar e rodar o projeto em seu ambiente local.

Pré-requisitos
Node.js (versão 20.x ou superior)

pnpm (versão 9.x ou superior)

Docker (recomendado para rodar o PostgreSQL)

Instalação
Clone o repositório:

git clone https://github.com/rafaelsanoli/Oralix.git
cd Oralix


Instale as dependências:
O pnpm irá instalar as dependências de todos os projetos do monorepo.

pnpm install


Configure as Variáveis de Ambiente:

Navegue até a pasta da API: cd apps/api

Renomeie o arquivo .env.example (se houver) para .env.

Abra o arquivo .env e configure a DATABASE_URL com a string de conexão do seu banco de dados PostgreSQL.

DATABASE_URL="postgresql://SEU_USUARIO:SUA_SENHA@localhost:5432/oralix_db?schema=public"


Execute a Migração do Banco de Dados:
Este comando irá criar todas as tabelas necessárias no seu banco de dados.

pnpm api exec prisma migrate dev


Rode a Aplicação:
Este comando iniciará o backend, o frontend web e o app mobile simultaneamente.

pnpm dev


API estará rodando em http://localhost:3000

Aplicação Web estará rodando em http://localhost:5173

O Expo (Mobile) irá iniciar e mostrar um QR Code para você escanear com o app Expo Go.

** Como Contribuir**
Contribuições são o que tornam a comunidade de código aberto um lugar incrível para aprender, inspirar e criar. Qualquer contribuição que você fizer será muito apreciada.

Faça um Fork do projeto.

Crie uma nova Branch (git checkout -b feature/FuncionalidadeIncrivel).

Faça o Commit das suas alterações (git commit -m 'feat: Adiciona FuncionalidadeIncrivel').

Faça o Push para a Branch (git push origin feature/FuncionalidadeIncrivel).

Abra um Pull Request.

** Licença**
Distribuído sob a licença MIT. Veja LICENSE para mais informações.
