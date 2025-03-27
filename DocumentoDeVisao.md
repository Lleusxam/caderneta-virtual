UNIVERSIDADE FEDERAL DO RIO GRANDE DO NORTE  
CENTRO DE ENSINO SUPERIOR DO SERIDÓ  
DEPARTAMENTO DE COMPUTAÇÃO E TECNOLOGIA  
CURSO DE BACHARELADO EM SISTEMAS DE INFORMAÇÃO

# **Documento de Visão** {#documento-de-visão}

EMANUEL ALVES DE MEDEIROS  
JUAN VITÓRIO DUTRA DE ARAÚJO  
MARLISON SOARES DA SILVA  
MATHEUS DINIZ FERNANDES  
MAXSUEL GADELHA OLIVEIRA DA SILVA

**CONTROLE DE VENDAS DE UTENSÍLIOS DE COZINHA**

Caicó – RN  
2025

# **Sumário** {#sumário}

- [**Sumário	2**](#sumário)

- [**Histórico de revisõe 3**](#histórico-de-revisões)

- [**Equipe e Definição de Papéis 3**](#equipe-e-definição-de-papéis)

- [Matriz de Competências 3](#matriz-de-competências)

- [**Descrição do Projeto 3**](#descrição-do-projeto)

- [Perfis dos Usuários 4](#perfis-dos-usuários)

- [Perfil de administrador 4](#perfil-de-administrador)

- [Perfil de usuário 4](#perfil-de-usuário)

- [**Requisitos Funcionais 4**](#requisitos-funcionais)

- [**Requisitos não-Funcionais 5**](#requisitos-não-funcionais)

- [**Riscos 5**](#riscos)



# **Histórico de revisões** {#histórico-de-revisões}

| Data | Versão | Descrição | Autor |
| ----- | ----- | ----- | :---: |
| 12/12/2024 | 1.0 | Documento inicial | Emanuel Alves, Juan Vitório, Marlison Soares, Matheus Diniz e Maxsuel Gadelha |

# **Equipe e Definição de Papéis** {#equipe-e-definição-de-papéis}

	

| Equipe | Papel |
| :---- | :---- | :---- |
| Taciano de Morais Silva | Professor |
| Luzineide Da Costa Silva | Cliente |
| Emanuel Alves | Desenvolvedor |
| Juan Vitório | Testador |
| Marlison Soares  | Revisor |
| Matheus Diniz | Analista |
| Maxsuel Gadelha | Líder Técnico |

# **Matriz de Competências** {#matriz-de-competências}

| Equipe | Competências |
| :---- | :---- |
| Taciano de Morais Silva | Engenharia de Software |
| Emanuel Alves de Medeiros | Desenvolvedor Django, SwiftUI. |
| Juan Vitório Dutra de Araújo | Designer, desenvolvedor Django, Web |
| Marlison Soares da Silva | Desenvolvedor Back-end, Laravel, React |
| Matheus Diniz Fernandes | Design, Desenvolvedor Web  |
| Maxsuel Gadelha Oliveira da Silva | Desenvolvedor Django, React, React-Native |

# **Descrição do Projeto** {#descrição-do-projeto}

O projeto Caderneta Virtual de Vendas (CVV) é um sistema de gerenciamento desenvolvido para um pequeno comércio que comercializa produtos domésticos da marca Tupperware. Seu objetivo é automatizar processos que antes eram realizados manualmente, aproveitando as vantagens de um software para melhorar a eficiência e reduzir erros. A proprietária enfrentava dificuldades no controle de pagamentos, especialmente no que se refere a clientes com dívidas pendentes. O sistema irá armazenar os dados cadastrais dos clientes, informações sobre os produtos à venda e o histórico de vendas. Ele também permitirá o acompanhamento detalhado dos pagamentos, com a identificação de clientes adimplentes, inadimplentes e com parcelas em aberto. Além disso, o software incluirá relatórios periódicos sobre os produtos mais vendidos, os devedores e o status de quitação das dívidas, proporcionando um controle mais eficaz do fluxo financeiro do comércio.

# 

# **Perfis dos Usuários** {#perfis-dos-usuários}

## **Perfil de administrador** {#perfil-de-administrador}

O administrador terá acesso a todas as funcionalidades envolvendo o controle de clientes, produtos, vendas, consórcios e pagamentos.

## **Perfil de usuário** {#perfil-de-usuário}

O usuário terá acesso a funções superficiais do sistema: terá o controle do andamento dos seus pagamentos, fiados pendentes, um histórico dos produtos comprados, a consulta de suas despesas e produtos, a visualização de seu histórico de compras, seu perfil de usuário, dentre outras funções comuns em sistemas de consulta.

# **Requisitos Funcionais**  {#requisitos-funcionais}

| Código | Nome | Descrição | Ator |
| :---- | :---- | :---- | :---- |
| RF01 | Manter cliente | O proprietário deve estar apto a realizar o cadastro de clientes. Possibilitando ver, buscar, registrar, deletar e editar os dados dos compradores. São exemplos de dados registrados: nome, CPF, meios de contato e endereço. | Equipe |
| RF02 | Manter produto | O proprietário deve poder ver, buscar, inserir, remover e alterar os dados referentes ao produtos ofertados, sendo esses dados, essencialmente: nome, tipo e preço do produto. | Equipe |
| RF03 | Manter venda | O proprietário deve poder ver, buscar, inserir, remover e alterar vendas de produtos realizadas para clientes do sistema. | Luzineide |
| RF04 | Manter cobrança | O sistema deve gerar cobranças sobre as vendas dos clientes, considerando a forma de pagamento especificada. | Luzineide |
| RF05 | Manter pagamento | O proprietário deve conseguir registrar o pagamento das cobranças sobre uma venda registrada no sistema. | Luzineide |
| RF06 | Manter login | Os usuários devem conseguir realizar login no sistema e o proprietário deve poder cadastrar, editar e excluir o login de clientes. | Equipe |
| RF07 | Gerar relatório | Deve gerar relatórios, como, de clientes cadastrados, produtos ofertados, vendas por período, clientes com pagamentos pendentes, clientes com mais compras finalizadas, entre outros, para análise e tomada de decisão. | Luzineide |
| RF08 | Enviar notificação | O sistema deve implementar um método de notificação destinado aos usuários com o intuito de avisar sobre o registro de cobranças novas e atrasadas, pagamentos registrados e alteração de dados do usuário. | Equipe |
| RF09 | Manter consórcio | O administrador deve poder cadastrar um consórcio e registrar pessoas nele. As pessoas adicionadas ao consórcio recebem uma cobrança mensal por uma compra no valor total do consórcio. | Equipe |

# 

# **Requisitos Não-Funcionais** {#requisitos-não-funcionais}

| Código | Nome | Descrição |
| :---- | :---- | :---- |
| RNF01 | Responsividade | O design do sistema deve se adaptar a diversos tamanhos de tela, permitindo o acesso através de computadores, tablets e smartphones. |
| RNF02 | Segurança | Garantir a segurança dos dados dos clientes, por meio de criptografia e controle de acesso. |
| RNF03 | Manutenabilidade | Deve ser fácil de manter e atualizar, com um código bem estruturado e documentado, facilitando a correção de erros e implementação de novas funcionalidades. |

# 

# **Riscos** {#riscos}

Preencher na tabela os riscos identificados para o início do projeto. Essa tabela deve ser atualizada ao final de cada iteração na reunião de acompanhamento.

| Data | Risco | Prioridade | Responsável | Status | Providência/Solução |
| :---- | :---- | :---- | :---- | :---- | :---- |
| 10/03/2022 | Não aprendizado das ferramentas utilizadas pelos componentes do grupo | Alta | Equipe | Vigente | Reforçar estudos sobre as ferramentas e aulas com a integrante que conhece a ferramenta |
| 10/03/2022 | Ausência do cliente por qualquer motivo | Média | Líder Técnico | Vigente | Planejar o cronograma tendo em base a agenda do cliente |
| 10/03/2022 | Divisão de tarefas mal sucedida | Baixa | Líder Técnico | Vigente | Acompanhar de perto o desenvolvimento de cada membro da equipe. |
| 09/12/2024 | Atraso nas Entregas | Alto | Equipe | Vigente | Atraso no avanço do projeto, e na entrega das atividades que envolvam o projeto. |
| 09/12/2024 | Desentendimento e mal relacionamento do grupo  | Baixa | Equipe | Vigente | Problema relacional com o grupo, má interação e descaso no trabalho em equipe. |

