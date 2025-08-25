# Interface Segregation Principle (Principio daSeparação de Interfaces) - ISP

Este projeto demonstra o Princípio da Separação de Interfaces, um dos pilares do SOLID, utilizando a arquitetura MVVM (Model - View - ViewModel) em Dart.

## O que é?
O Interface Segregation Principle afirma que:

👉``` "Uma classe não deve ser forçada a implementar métodos que não usa."```

Em outras palavras, é melhor ter interfaces pequenas do que uma interface gigante.

## Estrutura
```
Liskov Substitution/
 ├─ models/
 │   ├─ workable.dart           # Classe base para todos os trabalhadores
 │   ├─ eatable.dart    # Classe base para aqueles que comem
 │   ├─ human.dart        # Um humano come e trabalha
 │   ├─ robot.dart        # Um robo trabalha, mas não come
 │
 ├─ services/
 │   └─ worker_service.dart   # Contém as regras de negócio
 │
 ├─ view_models/
 │   └─ worker_view_model.dart # Controla a lógica entre Models e a View
 │
 ├─ views/
 │   └─ worker_view.dart      # Simula a interface com o usuário no terminal
 │
 ├─ main.dart               # Ponto de entrada do programa
 └─ readme.md
```

## Explicação por camadas.
### Models
Aqui teremos toda a estrutura de Classes. 

No exemplo temos [workable.dart](./models/workable.dart) que é a classe abstrata e base de todos os métodos de trabalhadores. Além disso temos a classe [eatable.dart](./models/eatable.dart) que é a classe abstrata e base para todos os métodos de quem come.

Além dessas temos as classes:
- [human.dart](./models/human.dart)
- [robot.dart](./models/robot.dart)

Humano e Robo trabalham, porém apenas humano come

### Services
<!-- TODO: Explicar Services. -->
.... 
[worker_service.dart](./services/worker_service.dart)

### View Models
Aqui se faz a ponte entre a View e as Models, Services e Repositories. [worker_view_model.dart](./view_models/worker_view_model.dart)

### Views
Aqui onde existe toda a parte visual para o usuário, no exemplo usamos apenas terminal, mas seria a parte onde seria apresentada todo o Front-end daquela determinada tela.
[worker_view.dart](./views/worker_view.dart)


### Main
Ponto de Inicialização da Aplicação - Entrada. [main.dart](./main.dart)


## 🧩 Como o ISP foi aplicado aqui?
<!-- TODO: Explicar Como foi aplicado ISP. -->
....