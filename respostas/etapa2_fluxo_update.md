# Etapa 2 - Fluxo de Atualização

- Em `Planet.update()`, o ângulo `theta` do planeta é incrementado por `orbitspeed` (`theta += orbitspeed`), controlando a velocidade da órbita em torno do Sol.
- Ainda em `Planet.update()`, cada lua composta no planeta é atualizada com `moons[i].update()`, mantendo o ciclo de atualização separado por objeto.
- Em `Moon.update()`, a lua também incrementa seu próprio `theta` por `orbitspeed`, gerando órbita local em torno do planeta.
- O valor de `orbitspeed` define o quanto o ângulo muda por frame: módulo maior implica movimento angular mais rápido.
- Como em `Moon` o `orbitspeed` pode ser positivo ou negativo, o sentido da órbita pode ser anti-horário (positivo) ou horário (negativo).
