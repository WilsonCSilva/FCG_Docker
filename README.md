# 🌾 AgroSolutions - Hackathon Fase 5

![Status](https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Kubernetes-blue?style=for-the-badge&logo=kubernetes)
![Language](https://img.shields.io/badge/Stack-.NET_8-512bd4?style=for-the-badge&logo=dotnet)
![Architecture](https://img.shields.io/badge/Architecture-Microservices-orange?style=for-the-badge)

> **Projeto de Conclusão de Pós-Graduação**
> Solução robusta de Agricultura 4.0 focada em monitoramento IoT, escalabilidade e observabilidade.

---

## 📺 Apresentação e Documentação
Para uma imersão completa na solução, utilize os links abaixo:

* 🎥 **Vídeo de Apresentação:** [Assistir no Google Drive](https://drive.google.com/file/d/1obK1rZlVQMg1Ae3IBzCLjT1LOipDIqRj/view?usp=sharing)
* 📐 **Diagrama de Arquitetura:** [Explorar no Miro](https://miro.com/app/board/uXjVG85GX0s=/?share_link_id=873000372835)

---

## 🛠️ Tecnologias e Ferramentas

### **Backend & Orquestração**
![.NET](https://img.shields.io/badge/.NET-512BD4?style=for-the-badge&logo=dotnet&logoColor=white)
![Kubernetes](https://img.shields.io/badge/kubernetes-%23326ce5.svg?style=for-the-badge&logo=kubernetes&logoColor=white)
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)

### **Mensageria & Bancos de Dados**
![RabbitMQ](https://img.shields.io/badge/RabbitMQ-FF6600?style=for-the-badge&logo=rabbitmq&logoColor=white)
![MicrosoftSQLServer](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![MongoDB](https://img.shields.io/badge/MongoDB-%234ea94b.svg?style=for-the-badge&logo=mongodb&logoColor=white)

### **Observabilidade & CI/CD**
![Prometheus](https://img.shields.io/badge/Prometheus-E6522C?style=for-the-badge&logo=Prometheus&logoColor=white)
![Grafana](https://img.shields.io/badge/Grafana-F46800?style=for-the-badge&logo=Grafana&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

---

## 📖 Estudo de Caso
A **AgroSolutions** é uma cooperativa agrícola tradicional que busca se modernizar para enfrentar os desafios do século XXI: otimização de recursos hídricos, aumento da produtividade e sustentabilidade.

Atualmente, a tomada de decisão no campo é baseada majoritariamente na experiência dos agricultores. Com a visão de implementar a **Agricultura 4.0**, esta plataforma de IoT (Internet of Things) e análise de dados oferece aos seus cooperados um serviço de precisão baseado em telemetria em tempo real.

---

## 🏗️ Arquitetura da Solução
A aplicação foi estruturada seguindo os princípios de microsserviços e orquestrada via **Kubernetes**, fundamentada em quatro pilares técnicos:

### 1. Persistência Poliglota (Polyglot Persistence)
* **SQL Server:** Utilizado pelos serviços `Auth`, `Propriedade` e `Alerta`, garantindo transações ACID para dados relacionais críticos.
* **MongoDB
