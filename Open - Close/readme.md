# Open/Closed Principle - Principio Aberto/Fechado (OCP)
## O que é?
O Open/Closed Principle é o segundo princípio do SOLID e diz que:

```“Entidades de software (classes, módulos, funções, etc.) devem estar abertas para extensão, mas fechadas para modificação.”```

Isso significa que devemos poder adicionar novos comportamentos sem precisar alterar o código existente.

## Estrutura no código.
Neste exemplo, aplicamos o SRP dentro de uma arquitetura MVVM (Model–View–ViewModel):

```
Open - Close/
 ├─ models/
 │   ├─ payment.dart
 │   ├─ pix_payment.dart
 │   ├─ card_payment.dart
 │   └─ boleto_payment.dart
 ├─ services/
 │   └─ payment_service.dart
 ├─ view_models/
 │   └─ payment_view_model.dart
 ├─ views/
 │   └─ payment_view.dart
 ├─ main.dart
 └─ readme.md
```

## Explicação por camadas.
### Models
Aqui teremos toda a estrutura de Classes. 

No exemplo temos [payment.dart](./models/payment.dart) que é a classe abstrata e base de todos os métodos de Pagamento

Além dessa temos as classes que implementão a classe abstratat Payment, no caso as classes:
- [pix_payment.dart](./models/pix_payment.dart);
- [card_payment.dart](./models/card_payment.dart);
- [boleto_payment.dart](./models/boleto_payment.dart).

Desta forma conseguimos fazer diversas métodos de pagamento sem alterar o código base.

### Services
Aqui teremos todas as funcionalidades das Classes. 
No caso recebe qualquer tipo de pagamento que implementa Payment.
[payment_service.dart](./services/payment_service.dart)

### View Models
Aqui se faz a ponte entre a View e as Models, Services e Repositories. [payment_view_model.dart](./view_models/payment_view_model.dart)

### Views
Aqui onde existe toda a parte visual para o usuário, no exemplo usamos apenas terminal, mas seria a parte onde seria apresentada todo o Front-end daquela determinada tela.
[payment_view.dart](./views/payment_view.dart)


### Main
Ponto de Inicialização da Aplicação - Entrada. [main.dart](./main.dart)

## ✅ Como aplicamos OCP aqui?

 - O sistema está aberto para extensão: podemos criar CryptoPayment, ApplePayPayment, GooglePayPayment, etc.

- Está fechado para modificação: não precisamos mudar PaymentService, PaymentViewModel ou PaymentView.
Ou seja: para adicionar um novo método de pagamento, basta criar uma nova classe que implementa Payment.