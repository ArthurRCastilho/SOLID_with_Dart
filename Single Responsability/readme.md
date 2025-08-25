# Single Responsability Principle - Principio de Responsabilidade Única (SRP)

## O que é?
O Single Responsibility Principle (SRP) é o primeiro princípio do SOLID e diz que:
```“Uma classe deve ter apenas uma responsabilidade, ou um único motivo para mudar.”```
Isso significa que cada classe deve ser responsável por apenas uma parte específica da aplicação. Assim, o código fica mais organizado, fácil de manter e reutilizar.

## Estrutura no código.
Neste exemplo, aplicamos o SRP dentro de uma arquitetura MVVM (Model–View–ViewModel):

```
single_responsability/
 ├─ models/
 │   └─ user.dart
 ├─ repositories/
 │   └─ user_repository.dart
 ├─ services/
 │   └─ user_services.dart
 ├─ view_models/
 │   └─ user_view_model.dart
 ├─ views/
 │   └─ user_view.dart
 ├─ main.dart
 └─ readme.md

```

## Explicação por camadas.
### Models
Aqui teremos toda a estrutura de Classes. No exemplo usamos [usar.dart](./models/user.dart)
- Representa os dados do usuário.
- Única responsabilidade: armazenar informações.

### Repositories
Aqui teremos toda a estrutura de Classes. No exemplo usamos [user_repository.dart](./repositories/user_repository.dart)
- Responsável por salvar o usuário no banco de dados.
- Única responsabilidade: persistência.

### Services
Aqui teremos todas as funcionalidades das Classes. No exemplo usamos [user_services.dart](./services/user_services.dart)
- Responsável por enviar e-mails para o usuário.
- Única responsabilidade: comunicação externa (e-mail).

### View Models
Aqui se faz a ponte entre a View e as Models, Services e Repositories. [user_view_model.dart](./view_models/user_view_model.dart)
- Faz a ponte entre Model, Repository e Service.
- Única responsabilidade: lógica de negócio (orquestra as operações).

### Views
Aqui onde existe toda a parte visual para o usuário, no exemplo usamos apenas terminal, mas seria a parte onde seria apresentada todo o Front-end daquela determinada tela.
[user_view.dart](./views/user_view.dart)

- Interface com o usuário (nesse caso, terminal).
- Única responsabilidade: interação com o usuário.

### Main
Ponto de Inicialização da Aplicação - Entrada. [main.dart](./main.dart)
- Ponto de entrada da aplicação.
- Única responsabilidade: inicializar a View.

## Como SRP foi aplicado?

- User → guarda os dados.
- UserRepository → salva no banco.
- EmailService → envia e-mail.
- UserViewModel → organiza a lógica.
- UserView → interage com o usuário.
- main.dart → inicia a aplicação.

Cada classe tem apenas uma responsabilidade → exatamente o que o Single Responsibility Principle defende.