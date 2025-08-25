# 📌 Liskov Substitution Principle (LSP)
Este projeto demonstra o Princípio da Substituição de Liskov, um dos pilares do SOLID, utilizando a arquitetura MVVM (Model - View - ViewModel) em Dart.

## O que é?
O Liskov Substitution Principle afirma que:

```“Se S é subtipo de T, então objetos do tipo T podem ser substituídos por objetos do tipo S sem quebrar o comportamento do programa.”```

Em outras palavras, subclasses devem poder substituir suas superclasses de forma transparente, sem alterar a corretude do sistema.

## Estrutura
```
Liskov Substitution/
 ├─ models/
 │   ├─ bird.dart           # Classe base para todas as aves
 │   ├─ flying_bird.dart    # Subclasse abstrata para aves que voam
 │   ├─ penguin.dart        # Um pinguim (não voa, mas nada)
 │   ├─ sparrow.dart        # Um pardal (pode voar)
 │
 ├─ services/
 │   └─ bird_service.dart   # Contém as regras de negócio (alimentar e voar)
 │
 ├─ view_models/
 │   └─ bird_view_model.dart # Controla a lógica entre Models e a View
 │
 ├─ views/
 │   └─ bird_view.dart      # Simula a interface com o usuário no terminal
 │
 ├─ main.dart               # Ponto de entrada do programa
 └─ readme.md
```

## Explicação por camadas.
### Models
Aqui teremos toda a estrutura de Classes. 

No exemplo temos [bird.dart](./models/bird.dart) que é a classe abstrata e base de todos os métodos de Passaros. Além disso temos a classe [flying_bird.dart](./models/flying_bird.dart) que é responsável por atribuir atributos aos passaros que voam.

Além dessas temos as classes:
- [penguin.dart](./models/penguin.dart)
- [sparrow.dart](./models/sparrow.dart)

Penguin é uma ave que não voa porém nada, e Pardal é um passaro que voa, e não nada.

### Services
Aqui garantimos que não quebramos o LSP:
Funções que exigem voo só aceitam FlyingBird.
Funções genéricas aceitam qualquer Bird.
[bird_service.dart](./services/bird_service.dart)

### View Models
Aqui se faz a ponte entre a View e as Models, Services e Repositories. [bird_view_model.dart](./view_models/bird_view_model.dart)

### Views
Aqui onde existe toda a parte visual para o usuário, no exemplo usamos apenas terminal, mas seria a parte onde seria apresentada todo o Front-end daquela determinada tela.
[bird_view.dart](./views/bird_view.dart)


### Main
Ponto de Inicialização da Aplicação - Entrada. [main.dart](./main.dart)


## 🧩 Como o LSP foi aplicado aqui?

Criamos uma classe base Bird, que define um comportamento comum: ```eat()```.
Para aves que voam, criamos uma abstração específica: FlyingBird, que adiciona ```fly()```.
Sparrow (pardal) herda de FlyingBird, e pode substituí-la sem problemas.
Penguin herda apenas de Bird, pois não voa. Assim, não quebra o contrato de FlyingBird.
O BirdService trabalha com os tipos corretos:
- feedBird(Bird) → aceita qualquer ave.
- makeItFly(FlyingBird) → aceita apenas aves que voam.
    Isso impede que um pinguim seja tratado como se pudesse voar, respeitando o LSP.