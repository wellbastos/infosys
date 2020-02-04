# CI/CD:

```
Para este projeto estamos estudando a implementação de uma esteira DevOps.

Desenhe um fluxo de CI/CD visando a entrega de uma aplicação Web.

Utilize o seu conhecimento sobre o processo.
```

----
## Introdução:

Devemos criar fluxos de CI/CD com o maximo de automação disponível no ambiente.

Com a implantação deste processo, é possível reduzir erros ocasionados por um commit errado, e ou por descuido do time de desenvolvimento ou operação.

Beneficios adquiridos são menor tempo de entrega da aplicação no ambiente selecionado, e segurança contra erros cometidos durante o processo de deploy da aplicação.

---

## Processo de CI/CD:

Neste processo além de ganhar agilidade e segurança no deploy  da aplicação, consegue-se reduzir o tempo de implatanção em até 60%, e reduz quase na totalidade os erros ocasionados por falha humana.

Passos para este cenário:

1. Cria uma branch para o desenvolvimento da nova aplicação/feature.

2. Equipe de desenvolvimento gera o codígo, e faz o commit nesta branch.

3. CI/CD valida que ocorreu um novo commit na branch monitorada.

4. CI/CD inicia o pipeline na branch de desenvolvimento.

    4.1. Atualiza a branch.

    4.2. Faz um `git fetch` e `git pull` da branch no repositório específico.

    4.3. É criado um workspace onde é feito o build do artefato, e validação de testes unitários, e coverage, tendo aprovação dos testes unitários e coverage acima do valor estipulado pela equipe de desenvolvimento é iniciado a proxíma etapa.

    4.4. É feito o download da imagem docker base.

    4.5. Adicionado o artefato dentro da imagem docker base, gerando uma nova imagem contendo a aplicação nela.

    4.6. Feito o deploy desta imagem docker no ambiente de homologação,  onde é validado com os testes de integração, e testes automatizados.

    4.7. Após aprovação pela equipe de QA (Quality Assurance), e do PM (Product Manager).

5. É efetuado merge da branch de desenvolvimetno para a branch de master.

6. CI/CD inicia o pipeline na branch master.

    6.1. Atualiza a branch.

    6.2. Faz um `git fetch` e `git pull` da branch master no repositório específico.

    6.3. É feito o download da imagem docker base.

    6.4. Adicionado o artefato dentro da imagem docker base, gerando uma nova imagem contendo a aplicação nela.

    6.5. Feito o deploy desta imagem docker no ambiente de produção,  onde é validado com os testes de integração, e testes automatizados.

    6.6. É feito deploy  da aplicação no ambiente de produção, utilizando tecnicas de blue/green fazendo a substituição da aplicação, e adicionando a nova versão sem apresentar downtime e indisponibilidade momentânea.

---

## Cenário de Hot Fix:

Quando é descoberto uma falha grave na aplicação, sendo aplicado emergencialmente um patch para correção desta falha.

Passos para este cenário:

1. Equipe de desenvolvimento constroi o hot fix.

2. É validado nos testes automatizados e de integração.

3. Faz deploy dele no ambiente de homologação.

4. Obtendo aprovação da equipe de QA (Quality Assurance) e do PM (Product Manager).

5. É efetuado merge da branch do hot fix para a branch de master.

6. É iniciado pelo CI/CD o processo de build e deploy de aplicação no ambiente de produção, podendo usar estratégias de blue/green não gerando indisponibilidade momentânea no ambiente de produção.

-----

## Links - Github:

[Repositório  do Teste](https://github.com/wellbastos/infosys/)

[Github](https://github.com/wellbastos/)

[Linkedin](https://www.linkedin.com/in/wellingtonbastos)

---

## Teste Efetuado por:

> Wellington Moreira Bastos.