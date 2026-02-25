# HACKATON - Fase 5 - AgroSolutions

# 1 - Vídeo de apresentação
Link [Google Drive](https://drive.google.com/file/d/1obK1rZlVQMg1Ae3IBzCLjT1LOipDIqRj/view?usp=sharing)

# 2 - Diagrama da arquitetura da solução
Link [Miro](https://miro.com/app/board/uXjVG85GX0s=/?share_link_id=873000372835)

# 3 - Estudo de caso
> A AgroSolutions é uma cooperativa agrícola tradicional que busca se modernizar para enfrentar os desafios do século XXI: otimização de recursos hídricos, aumento da produtividade e sustentabilidade.
>
> Atualmente, a tomada de decisão no campo é baseada majoritariamente na experiência dos agricultores, sem um forte apoio de dados em tempo real, o que leva a desperdícios e a uma produtividade abaixo do potencial.
>
> Com a visão de implementar a agricultura 4.0, a AgroSolutions decidiu construir uma plataforma de IoT (Internet of Things) e análise de dados para oferecer aos seus cooperados um serviço de agricultura de precisão.

# 2. Arquitetura da Solução
> A aplicação foi desenvolvida em .NET e orquestrada via Kubernetes (K8s). 

A estrutura divide-se em quatro pilares fundamentais:

Persistência Poliglota (Polyglot Persistence): Utilizamos SQL Server para os serviços de Auth, Propriedade e Alerta, garantindo transações ACID para dados relacionais.

Implementamos MongoDB no SensorService para suportar a alta vazão e a natureza semiestruturada (JSON) dos dados de sensores.

Comunicação Assíncrona e Desacoplamento: O RabbitMQ atua como Message Broker, permitindo que o AlertaService consuma eventos de forma reativa. Isso evita o acoplamento temporal entre a recepção do dado e o disparo de notificações.

Ingestão: O SensorService funciona como um API Gateway especializado, realizando o parsing e a validação dos dados antes da persistência e publicação na fila.

# 4. Infraestrutura e Observabilidade (Stack de Operação)
> Um diferencial crítico deste projeto é a mentalidade DevOps aplicada desde a concepção.

Monitoramento: Implementação de um pipeline de métricas com Prometheus, realizando o scraping automático de endpoints do Kubernetes.

Visualização: Dashboards em Grafana para análise de throughput, latência e saúde dos pods.

Deployment: Esteira automatizada via GitHub Actions, garantindo a integridade do código através de pipelines de CI/CD.

# 5. Microserviços da Solução
Cadastro e autenticação do Usuário (Produtor Rural): AuthService
Cadastro de Propriedade e Talhões: PropriedadeServices
Ingestão de dados dos sensores: SersorService
Gravação dos dados históricos recebidos do serviço SensorService: AlertaService

# 6. Requisitos técnicos do projeto
Arquitetura baseada em Microsserviços;
Orquestração com Kubernetes;
Observabilidade utilizando Prometheus/Grafana;
Mensageria com RabbitMQ;
Pipeline de CI/CD automatizado utilizando GitHub Actions.

# 7. Conclusão e Resultados Esperados
A arquitetura proposta demonstra maturidade ao separar preocupações de negócio de preocupações de infraestrutura. O uso de Namespaces no Kubernetes e NodePorts específicos garante uma organização lógica e acesso controlado aos serviços, resultando em um sistema resiliente, fácil de monitorar e pronto para o crescimento sob demanda.


