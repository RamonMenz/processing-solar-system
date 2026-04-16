# Etapa 3 - Extensão do Código

## O que foi modificado
- Foi mantida a arquitetura por composição: `Planet` continua contendo `Moon`, mas agora como coleção (`Moon[] moons`).
- Um planeta foi configurado com **duas luas** com `distance` e `orbitspeed` diferentes.
- Foram adicionados parâmetros visuais:
  - Cor por planeta (`planetColor` em `Planet`)
  - Cor e tamanho por lua (`moonColor` e `diameter` em `Moon`)

## Arquivos alterados
- `SistemaSolar/SistemaSolar.pde`
- `SistemaSolar/Planeta.pde`
- `SistemaSolar/Lua.pde`

## Trechos relevantes

### 1) Planeta com duas luas (arquivo `SistemaSolar/SistemaSolar.pde`)
```java
planets[1] = new Planet(
  96,
  28,
  color(242, 142, 43),
  new Moon[] {
    new Moon(18, 5, -0.06, color(190)),
    new Moon(34, 9, 0.025, color(140))
  }
);
```

### 2) Composição de múltiplas luas (arquivo `SistemaSolar/Planeta.pde`)
```java
Moon[] moons;

void update() {
  theta += orbitspeed;
  for (int i = 0; i < moons.length; i++) {
    moons[i].update();
  }
}
```

### 3) Parâmetros visuais e orbitais da lua (arquivo `SistemaSolar/Lua.pde`)
```java
Moon(float distance_, float diameter_, float orbitspeed_, int moonColor_) {
  distance = distance_;
  diameter = diameter_;
  theta = 0;
  orbitspeed = orbitspeed_;
  moonColor = moonColor_;
}
```
