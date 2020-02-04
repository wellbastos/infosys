
#desenhar
dev faz o commit no git
o ci triga essa ação
a partir desta ação 
ele  inicia o pipeline:

que a atualiza o repositório, e gera um build deste artefato, valida os testes de integração e coverage
depois faz download da imagem base docker
depois adiciona o artefato buildado na imagem

faz o build de uam nova imagem contendo o artefato
essa imagem é provisionada no ambiente de staging onde é efetuado os testes de integrações com ferramentas deste tipo

é aplicado dentro de um cluster de stg de k8s. via helm

apos os testes é levantando um ambiente  para validar se está tudo correto com a aplicação, e o qa pode validar

com a aprovação do qa e do pm,é efetuado merge com a master e é gerado um build novo com na branch master e aplciado no ambiente produtivo usando blue green  via helm




cenário hotfix

com a aprovação do qa e do pm,é efetuado merge com a master e é gerado um build novo com na branch master e aplciado no ambiente produtivo usando blue green  via helm

