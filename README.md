# 🦷 Oralix - Sistema de Gestão Odontológica Inteligente

![Oralix](docs/ORALIX.png)

**Digitalize sua clínica. Encante seus pacientes.**

---

## 🌟 Visão Geral
O **Oralix** é uma plataforma **all-in-one** que transforma a gestão de clínicas odontológicas, substituindo processos manuais por fluxos digitais intuitivos. Com **Web App para profissionais** e **Mobile App para pacientes**, oferecemos:

- 📅 **Agendamento inteligente**
- 🦷 **Prontuário eletrônico com odontograma digital**
- 💰 **Controle financeiro integrado**
- 📱 **Acesso remoto a exames e receitas**

**Stack Moderna:** NestJS (Backend), React/React Native (Frontend), PostgreSQL + Prisma ORM.

---

## 🚀 Funcionalidades

### Para Clínicas (Web App)
| Ícone | Funcionalidade           | Descrição                                  |
|-------|--------------------------|--------------------------------------------|
| 📅    | Agenda Inteligente       | Visualização por profissional/dia/semana.  |
| 🖥️    | Prontuário Eletrônico    | Histórico completo + odontograma digital.  |
| 💸    | Gestão Financeira        | Faturamento, recebimentos e relatórios.    |

### Para Pacientes (Mobile App)
| Ícone | Funcionalidade           | Descrição                                  |
|-------|--------------------------|--------------------------------------------|
| 📱    | Agendamento Online       | Escolha de horários em tempo real.         |
| 🏥    | Acesso a Documentos      | Exames, receitas e planos de tratamento.   |
| 🔔    | Lembretes Automáticos    | Notificações para consultas e pagamentos.  |

---

## 🛠 Tecnologias

<div align="center">

| **Backend**       | **Frontend Web**   | **Mobile**         | **Banco de Dados** |
|-------------------|--------------------|--------------------|--------------------|
| ![NestJS](https://img.shields.io/badge/NestJS-E0234E?style=for-the-badge&logo=nestjs&logoColor=white) | ![React](https://img.shields.io/badge/React-61DAFB?style=for-the-badge&logo=react&logoColor=black) | ![React Native](https://img.shields.io/badge/React_Native-61DAFB?style=for-the-badge&logo=react&logoColor=black) | ![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white) |
| ![TypeScript](https://img.shields.io/badge/TypeScript-3178C6?style=for-the-badge&logo=typescript&logoColor=white) | ![Vite](https://img.shields.io/badge/Vite-646CFF?style=for-the-badge&logo=vite&logoColor=white) | ![Expo](https://img.shields.io/badge/Expo-000020?style=for-the-badge&logo=expo&logoColor=white) | ![Prisma](https://img.shields.io/badge/Prisma-2D3748?style=for-the-badge&logo=prisma&logoColor=white) |

</div>

---

## 📂 Estrutura do Projeto
```bash
oralix/
├── apps/
│   ├── api/          # Backend (NestJS)
│   ├── web/          # Frontend Web (React)
│   └── mobile/       # App Mobile (React Native)
├── packages/
│   ├── ui/           # Componentes compartilhados
│   └── config/       # Configurações globais
└── README.md         # Este arquivo
