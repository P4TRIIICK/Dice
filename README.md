#🎲 Dice Roller App
Um simples aplicativo Flutter que simula o lançamento de um dado. O design interativo e o gradiente de fundo tornam o app agradável de usar. Dividido em componentes modulares, como DiceRoller, GradientContainer e StyledText, o código é fácil de manter e expandir.

###🚀 Pré-requisitos
Antes de começar, certifique-se de ter as seguintes ferramentas instaladas:

###Flutter SDK
Um editor de código como Visual Studio Code ou Android Studio
🎮 Como rodar o projeto
Clone o repositório:

~~~bash
git clone https://github.com/P4TRIIICK/Dice.git
cd Dice
~~~

###Instale as dependências:
Execute o seguinte comando para instalar as dependências do Flutter:

~~~bash
flutter pub get
~~~

###Execute o aplicativo:

####Conecte um dispositivo Android ou iOS ou use um emulador e execute:

~~~bash
flutter run
~~~
##📂 Estrutura do Projeto

lib/dice_roller.dart
Este arquivo contém a lógica principal do dado. A classe DiceRoller é um StatefulWidget que exibe a imagem do dado com base no valor atual. O dado é rolado quando o botão "Roll the dice!" é pressionado.

~~~dart
class DiceRoller extends StatefulWidget {
  //...
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(onPressed: rollDice, child: Text('Roll the dice!')),
      ],
    );
  }
}
~~~
lib/gradient_container.dart
Este arquivo define o fundo gradiente do aplicativo e contém o dado. A classe GradientContainer é um StatelessWidget que recebe uma lista de cores para criar o gradiente.

~~~dart
class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer(this.colors);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
~~~
lib/main.dart
Este arquivo contém a função principal que inicia o aplicativo. Ele utiliza o widget GradientContainer como corpo principal da interface, com um gradiente de roxo e azul.

~~~dart
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ]),
      ),
    ),
  );
}
~~~
lib/styled_text.dart
Este arquivo define o widget StyledText, usado para estilizar textos com um tamanho de fonte e cor personalizados.

~~~dart
class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
~~~
##🖼️ Assets
O aplicativo depende de imagens de dados (por exemplo: dice-1.png, dice-2.png, etc.), que estão localizadas na pasta assets/images/. Certifique-se de que essas imagens estão corretamente configuradas no arquivo pubspec.yaml:

~~~yaml
flutter:
  assets:
    - assets/images/
~~~
💡 Melhorias Futuras
Adicionar animações mais complexas para o dado rolando.
Implementar uma tela de configurações onde o usuário pode personalizar o gradiente de fundo.
Permitir a escolha de diferentes tipos de dados (ex.: d12, d20).
