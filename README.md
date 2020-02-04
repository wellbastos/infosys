# Projeto - Teste Devops Infosys:

Neste projeto exemplifica o teste devops da Infosys.

Este repositório está dividido em três partes:

- Infraestrutura
- CI/CD
- Docker

---

## 1 - Infraestrutura:

 ```
 Solicitado:

A infraestrutura deve ser provisionada na AWS utilizando infraestrutura como código. (Terraform ou Cloud Formation)

O seu código deverá contemplar os seguintes recursos:

 Criar 2 Instâncias EC2:

- Uma EC2 Nomeada como FRONTEND (o nome não precisa ser em letras maiúsculas).

- Uma EC2 Nomeada como BACKEND (o nome não precisa ser em letras maiúsculas).

Criar 2 Security Group’s:

- Um dos security group deve conter uma liberação para HTTP e HTTPS e ser atachado a máquina FRONTEND o outro security, group deve ter apenas uma liberação SSH vindo da máquina de FRONTEND e ser atachado na máquina BACKEND.
```

Para implantar este cenário, criei uma vpc com network id 192.168.0.0/16, depois um internet gateway, elastic load balancer, criei 4 sub redes, sendo 2 públicas com network id 192.168.1.0/24 e 192.168.2.0/24, e 2 sub redes privadas com network id 192.168.3.0/23 e 192.168.4.0/23, criado regras de autoscaling no grupo que recebe a rede pública, criado security group que permite acesso externo nas portas 80 e 443, e no outro security group apenas permite trafego ssh com origem da instancia frontend.
Também atribui monitoramento basico de consumo de cpu pelo  cloudwatch que efetua uma trigger de adicionar e remover instancias no grupo público.

Utilizei o terraform para instanciar este ambiente, a versão `11` foi utilizada neste projeto.
docker

---

## 2 - CI/CD:

```
Para este projeto estamos estudando a implementação de uma esteira DevOps.

Desenhe um fluxo de CI/CD visando a entrega de uma aplicação Web.

Utilize o seu conhecimento sobre o processo.
```

O fluxo do  CI/CD estará na pasta [projeto](https://github.com/wellbastos/infosys/tree/master/CICD) , acessando o [readme](https://github.com/wellbastos/infosys/tree/master/CICD/README.md).

---

## 3 - Docker:

```
Solicitado:
Visando a evolução da aplicação para micros serviço, monte um Dockerfile funcional de uma aplicação web usando Nginx como demonstração e importando um index.html

utilizando o código abaixo:
<h1> TESTE INFOSYS DEVOPS </h1>
```

Para facilitar o deploy do programa necessário, foi desenvolvido um script que efetua o build da aplicação e, em seguida, executa o container necessário.

Basta acessar a pasta do [projeto](https://github.com/wellbastos/infosys/tree/master/docker) e executar o script:

> cd docker

> bash run.sh

---

## Links - Github:

[Repositório  do Teste](https://github.com/wellbastos/infosys/)

[Github](https://github.com/wellbastos/)

[Linkedin](https://www.linkedin.com/in/wellingtonbastos)

---

## Teste Efetuado por:

> Wellington Moreira Bastos.