# Estrutura da Atividade

## Etapa 1 — Leitura guiada e diagrama

**Tarefa:**  
Em duplas, os alunos fazem um mapa das transformações executadas do **Sol → Planeta → Lua**.

**Produto:**  
Um diagrama simples (papel ou quadro digital) com caixas “Sol”, “Planeta i”, “Lua de i” e setas apontando as transformações.

---

## Etapa 2 — Explanação do fluxo de atualização

**Tarefa:**  
Identificar:
- Onde `theta` é incrementado  
- Como `orbitspeed` influencia o movimento  
- Por que as velocidades das luas podem ser positivas ou negativas (órbita horária/anti-horária)

**Produto:**  
3–5 bullet points que expliquem o método `update()` de `Planet` e `Moon`.

---

## Etapa 3 — Extensão

Cada dupla implementa as seguintes modificações, preservando a arquitetura:

### 1. Planeta com duas luas
- Duplicar a composição de `Moon` em um dos planetas e fazer cada uma ter `orbitspeed` e `distance` diferentes.  
*(Extensão direta do padrão proposto no código original.)*

### 2. Parâmetros visuais
Atribuir:
- Cores diferentes aos planetas  
- Tamanhos diferenciados às luas  

Manter coerência com os campos:
- `diameter`  
- `distance`  
- `orbitspeed`  

---

## Etapa 4 — Relatório

**Tarefa:**  
Entregar um README (5–10 linhas) respondendo:

- Onde você aplicou `pushMatrix()` / `popMatrix()` e por quê?  
- O que mudaria se invertêssemos `rotate()` e `translate()` no planeta ou na lua?  
- Como garantiu que cada órbita é independente das demais?  
  *(Dica: composição, atualização separada em `update()` e uso de matrizes aninhadas)*