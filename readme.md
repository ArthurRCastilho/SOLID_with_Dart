# Entendendo SOLID com Dart.

### O que é SOLID?
👉 SOLID é um conjunto de 5 princípios de programação orientada a objetos que ajudam a escrever códigos melhores: fáceis de entender, manter, escalar e reutilizar.

- [S -> Single Responsability (Responsabilidade Única)](./Single%20Responsability/)
- [O -> Open/Close (Aberto/Fechado)](./Open%20-%20Close/)
- [L -> Liskov Substitution (Substituição de Liskov)](./Liskov%20Substitution/)
- [I -> Interface Segregation (Separação de Interfaces)](./Interface%20Segregation/)
- [D -> Dependency Inversion (Inversão de Dependência)](./Dependency%20Inversion/)

Cada pasta contém mais detalhado como funciona cada principio.

## Sumário
- [O que é SOLID](#o-que-é-solid)
- [Single Responsibility Principle (SRP)](#-s--single-responsability-responsabilidade-única)
- [Open/Closed Principle (OCP)](#-o--openclose-abertofechado)
- [Liskov Substitution Principle (LSP)](#-l--liskov-substitution-substituição-de-liskov)
- [Interface Segregation Principle (ISP)](#-i--interface-segregation-separação-de-interfaces)
- [Dependency Inversion Principle (DIP)](#-d--dependency-inversion-inversão-de-dependência)
- [Considerações Finais](#considerações-finais)
- [Vantagens](#-vantagens)
- [Desvantagens](#️-desvantagens)
- [Resumo](#resumo)

---

## 🟦 S — Single Responsability (Responsabilidade Única)
👉 "Uma classe deve ter apenas uma responsabilidade."

A responsabilidade de cada classe deve ser muito bem definida, e fazer sua função bem feita.
Quando estamos aprendendo programar, é comum colocarmos várias funções em uma uníca classe, porém isso a longo prazo fica díficil de manter a longo prazo.

<br>
❌ Exemplo errado:

```Dart
class User {
  String name;
  String email;

  User(this.name, this.email);

  void saveToDatabase() {
    print("Salvando usuário no banco de dados...");
  }

  void sendEmail() {
    print("Enviando e-mail para $email");
  }
}
```
<br>

✅ Exemplo Correto: 

```Dart
class User {
  String name;
  String email;

  User(this.name, this.email);
}

class UserRepository {
  void save(User user) {
    print("Salvando usuário ${user.name} no banco de dados...");
  }
}

class EmailService {
  void sendEmail(User user) {
    print("Enviando e-mail para ${user.email}");
  }
}
```

Desta forma conseguimos dividir os conceitos, e deixar bem definido classes com suas responsabilidades únicas

## 🟩 O — Open/Close (Aberto/Fechado)
👉 "Classes devem estar abertas para extensão, mas fechadas para modificação."

Ou seja: Ao invés de Modificarmos o código já pronto, podemos criar extensões para aquela classe.
<br>

❌ Exemplo Errado:
```Dart
class Payment {
  void pay(String type) {
    if (type == "pix") {
      print("Pagamento via Pix");
    } else if (type == "cartao") {
      print("Pagamento via Cartão");
    }
  }
}
```

✅ Exemplo Correto (Usar Polimorfismo ou extender):

```Dart
abstract class Payment {
  void pay();
}

class PixPayment implements Payment {
  @override
  void pay() => print("Pagamento via Pix");
}

class CardPayment implements Payment {
  @override
  void pay() => print("Pagamento via Cartão");
}

// Se quiser criar um BoletoPayment, só criar uma nova classe.
```

Ao fazer isso, sempre que for necessário criar uma nova funcionalidade, não irá afetar as funcionalidades que já estão em funcionamento, e sempre que precisar de uma funcionalidade nova, basta apenas criar uma nova classe.

## 🟥 L — Liskov Substitution (Substituição de Liskov)
👉 "Objetos de uma subclasse devem poder substituir objetos da superclasse sem quebrar o programa."

Ou seja, se Filho herda de Pai, ele tem que se comportar como Pai.

❌ Exemplo Errado:

```Dart
class Bird {
  void fly() => print("Voando...");
}

class Penguin extends Bird {
  @override
  void fly() => throw Exception("Pinguins não voam!");
}
```

✅ Exemplo Correto:
```Dart
abstract class Bird {}

class FlyingBird extends Bird {
  void fly() => print("Voando...");
}

class Penguin extends Bird {
  void swim() => print("Nadando...");
}
```
Agora Penguin não precisa herdar um funcionamento que não faz sentido para ele.

## 🟨 I — Interface Segregation (Separação de Interfaces)
👉 "Uma classe não deve ser forçada a implementar métodos que não usa."
Ou seja, é melhor ter interfaces pequenas do que uma interface gigante.

❌ Exemplo Errado:
```Dart
abstract class Worker {
  void work();
  void eat();
}

class Robot implements Worker {
  @override
  void work() => print("Robô trabalhando");

  @override
  void eat() {
    // Robô não come! Isso não faz sentido.
    throw Exception("Robô não come");
  }
}
```

✅ Exemplo Correto: (interfaces separadas)
```Dart
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class Human implements Workable, Eatable {
  @override
  void work() => print("Humano trabalhando");

  @override
  void eat() => print("Humano comendo");
}

class Robot implements Workable {
  @override
  void work() => print("Robô trabalhando");
}
```

Desta forma cada Classe implementa apenas o que faz sentido

## 🟪 D — Dependency Inversion (Inversão de Dependência)

👉 "Dependa de abstrações, não de implementações."

Ou seja, não devemos depender diretamente de classes concretas, mas sim de inferfaces/abstrações.

❌ Exemplo Errado:
```Dart
class MySQLDatabase {
  void saveData(String data) {
    print("Salvando $data no MySQL");
  }
}

class UserRepository {
  final MySQLDatabase database = MySQLDatabase();

  void saveUser(String user) {
    database.saveData(user);
  }
}
```

✅ Exemplo Correto:
```Dart
abstract class Database {
  void saveData(String data);
}

class MySQLDatabase implements Database {
  @override
  void saveData(String data) => print("Salvando $data no MySQL");
}

class MongoDBDatabase implements Database {
  @override
  void saveData(String data) => print("Salvando $data no MongoDB");
}

class UserRepository {
  final Database database;

  UserRepository(this.database);

  void saveUser(String user) {
    database.saveData(user);
  }
}
```



# Considerações Finais
O SOLID traz uma série de vantagens importantes no desenvolvimento de software, mas também possui alguns desafios e desvantagens no uso.

### ✅ Vantagens:

- Código mais limpo e organizado → Cada classe tem uma função clara, facilitando a leitura e compreensão.
- Facilidade de manutenção → Mudanças em uma parte do código afetam menos outras partes, evitando “efeito cascata”.
- Maior reutilização → Classes e interfaces bem definidas podem ser reaproveitadas em outros projetos.
- Testabilidade → Com baixo acoplamento, fica muito mais fácil criar testes unitários.
- Escalabilidade → Projetos que seguem SOLID crescem de forma mais sustentável, sem virar um “caos” com o tempo.

### ⛔️ Desvantagens:

- Maior complexidade inicial → Para quem está aprendendo, pode parecer “muita coisa para algo simples”.
- Mais arquivos e classes → O projeto pode parecer “inchado” com várias abstrações e separações.
- Exagero na aplicação → Usar SOLID em tudo, até em códigos simples, pode deixar o sistema mais complicado do que precisa ser.
- Curva de aprendizado → É necessário prática para aplicar corretamente, senão corre-se o risco de “forçar” os princípios de maneira errada.

## Resumo
👉 Em resumo: usar SOLID é ótimo para projetos médios e grandes, onde manutenção e escalabilidade são essenciais.
Já em projetos pequenos ou protótipos, pode ser melhor usar uma abordagem mais simples e só aplicar SOLID quando realmente fizer sentido.