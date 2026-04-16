# Etapa 4 - Relatório Final

Usei `pushMatrix()` e `popMatrix()` no desenho do Sol (bloco principal), de cada planeta e de cada lua.
Essas chamadas foram necessárias para isolar as transformações de cada corpo celeste.
Se invertermos `rotate()` e `translate()`, o centro da órbita muda, porque a translação passaria a ocorrer antes da rotação no referencial atual.
No planeta, isso altera a trajetória em relação ao Sol; na lua, altera a trajetória em relação ao planeta.
As órbitas permanecem independentes porque cada objeto possui estado próprio (`theta`, `distance`, `orbitspeed`).
A independência também vem da composição (`Planet` contém `Moon[]`) e da atualização separada em `update()`.
Por fim, as matrizes aninhadas com `pushMatrix()`/`popMatrix()` garantem que uma órbita não contamine a transformação da outra.
