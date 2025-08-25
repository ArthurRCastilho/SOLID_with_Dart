# Dependency Inversion Principle - Principio de Inversión de Dependencias - DIP

Este projeto demonstra o Princípio da Inversão de Dependência, um dos pilares do SOLID, utilizando a arquitetura MVVM (Model - View - ViewModel) em Dart.

## O que é?

O Dependency Inversion Principle afirma que:

```“Dependa de abstrações, não de implementações.”```

Em outras palavras, classes de alto nível não devem depender diretamente de classes de baixo nível, mas ambas devem depender de interfaces/abstrações.

## Estrutura
```
Dependency Inversion/
 ├─ models/
 │   ├─ database.dart          # Abstração (interface) para bancos de dados
 │   ├─ mysql_database.dart    # Implementação concreta do MySQL
 │   ├─ mongodb_database.dart  # Implementação concreta do MongoDB
 │   └─ user_repository.dart   # Repositório que depende da abstração Database
 │
 ├─ services/
 │   └─ user_service.dart      # Contém as regras de negócio para salvar usuários
 │
 ├─ view_models/
 │   └─ user_view_model.dart   # Controla a lógica entre Models e a View
 │
 ├─ views/
 │   └─ user_view.dart         # Simula a interface com o usuário no terminal
 │
 ├─ main.dart                  # Ponto de entrada do programa
 └─ readme.md

```

## Explicação por camadas.
### Models
Aqui temos toda a estrutura de Classes e Interfaces.

- [database.dart](./models/database.dart) → Define a abstração de qualquer banco de dados.
- [mysql_database.dart](./models/mysql_database.dart) → Implementação concreta para MySQL.
- [mongodb_database.dart](./models/mongodb_database.dart) → Implementação concreta para MongoDB.
- [user_repository.dart](./models/user_repository.dart) → Depende apenas da abstração Database, e não diretamente de uma implementação.

### Services

Aqui implementamos as regras de negócio que utilizam o repositório para salvar usuários.
[user_service.dart](./services/user_service.dart)

### View Models

Aqui se faz a ponte entre a View e as Models/Services.
[user_view_model.dart](./view_models/user_view_model.dart)

### Views

Aqui simulamos a interface com o usuário. No exemplo usamos apenas o terminal, mas poderia ser uma tela de app.
[user_view.dart](./views/user_view.dart)

### Main

Ponto de inicialização da aplicação - Entrada.
[main.dart](./main.dart)

## 🧩 Como o DIP foi aplicado aqui?

- Criamos a abstração Database, que define o contrato para qualquer banco de dados.
- O UserRepository não conhece MySQL ou MongoDB diretamente, ele apenas depende de Database.
- Implementações concretas (MySQLDatabase e MongoDBDatabase) podem ser trocadas livremente sem alterar o repositório.
- Na main.dart, podemos injetar qualquer implementação de banco de dados no UserRepository.

✅ Assim, nosso sistema fica flexível, extensível e desacoplado de implementações específicas.