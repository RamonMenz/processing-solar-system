# Etapa 1 - Diagrama de Transformações

Fluxo hierárquico (Sol -> Planeta -> Lua):

```text
┌─────────────────────────────────┐
│           Mundo (0,0)           │ Origem da tela (canto superior esquerdo)
└────────────────┬────────────────┘
                 │
                 │ 1. translate(width/2, height/2)
                 ▼
┌─────────────────────────────────┐
│               Sol               │ Agora o centro de rotação é o centro da tela
└────────────────┬────────────────┘
                 │
                 │ 2. pushMatrix()                   (Salva o referencial do Sol)
                 │ 3. rotate(theta_planeta)          (Gira o referencial)
                 │ 4. translate(distance_planeta, 0) (Move pelo raio da órbita)
                 ▼
┌─────────────────────────────────┐
│            Planeta i            │ O centro de rotação agora é o próprio planeta
└────────────────┬────────────────┘
                 │
                 │ 5. pushMatrix()               (Salva o referencial do planeta)
                 │ 6. rotate(theta_lua)          (Gira o referencial)
                 │ 7. translate(distance_lua, 0) (Move pelo raio da órbita da lua)
                 ▼
┌─────────────────────────────────┐
│            Lua de i             │ Posição final da lua relativa ao planeta
└─────────────────────────────────┘
```

## Hierarquia de transformações
- O sistema parte do referencial do Sol (centro da tela).
- Cada `Planet.display()` aplica `rotate()` e depois `translate()` para definir a órbita do planeta.
- Cada `Moon.display()` faz o mesmo dentro do referencial do planeta.
- `pushMatrix()` e `popMatrix()` isolam as transformações para que um corpo não afete os demais.
