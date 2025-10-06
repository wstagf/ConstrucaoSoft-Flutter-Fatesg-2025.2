passos para consumir uma api

1. instalar o HTTP, 
    - Adicionar  http: ^1.5.0 no pubspec

2. importar o HTTP na pagina que vai usar
    - Adicionar "import 'package:http/http.dart' as http;" no topo do arquivo da pagina


3. Criar uma funcao ASSINCRONA para carregar os dados
    -  ex: void carregarDados() async {}

4. fazer o get e armazenar em um response
    - Ex: 
      var response = await http.get(
        Uri.parse("https://bible-api.com/Jo%C3%A3o+3:16?translation=almeida"),
     );



5. converter o body do response em JSON
    - importar o dart.convert
    - adicionando "import 'dart:convert' as convert;" no topo da pagina
    - criar uma variavel para receber o body convertido
     ex: 
        var jsonResponse =
        convert.jsonDecode(response.body) as Map<String, dynamic>;

