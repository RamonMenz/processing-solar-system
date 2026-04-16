# Processing Solar System - Entrega

Este repositório serve para apresentar a resolução de uma atividade da disciplina de Computação Gráfica.

O projeto traz uma implementação pronta de um `SistemaSolar` em `Processing`, com arquitetura baseada em composição.
A lógica foi mantida sobre os arquivos existentes e expandida conforme o enunciado de `estrutura_atividade.md`.

## Organização das pastas
- `SistemaSolar/`: código-fonte Processing (`SistemaSolar.pde`, `Planeta.pde`, `Lua.pde`)
- `respostas/`: respostas textuais de cada etapa da atividade

## Arquivos de resposta
- `respostas/etapa1_diagrama.md`: diagrama textual das transformações e hierarquia
- `respostas/etapa2_fluxo_update.md`: explicação do fluxo de atualização
- `respostas/etapa3_extensao.md`: documentação das alterações de código
- `respostas/etapa4_relatorio.md`: relatório final sobre matrizes e independência das órbitas

## Resumo das alterações de código
- Um planeta passou a ter duas luas com `distance` e `orbitspeed` diferentes.
- Planetas receberam cores diferentes.
- Luas receberam tamanhos e cores diferentes.
- A composição foi preservada: `Planet` contém uma coleção de `Moon` e cada objeto atualiza/desenha seu próprio estado.
