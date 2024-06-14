import 'package:flutter/material.dart';

void main() => runApp(AppReceitas());

class AppReceitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Raleway',
      ),
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categorias de Receitas'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DADOS_CATEGORIAS
            .map((catData) => ItemCategoria(
                  catData.id,
                  catData.titulo,
                  catData.cor,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}

class Categoria {
  final String id;
  final String titulo;
  final Color cor;

  const Categoria({
    required this.id,
    required this.titulo,
    this.cor = Colors.orange,
  });
}

class Receita {
  final String id;
  final List<String> categorias;
  final String titulo;
  final List<String> ingredientes;
  final List<String> passos;
  final int duracao;

  const Receita({
    required this.id,
    required this.categorias,
    required this.titulo,
    required this.ingredientes,
    required this.passos,
    required this.duracao,
  });
}

const DADOS_CATEGORIAS = [
  Categoria(
    id: 'c1',
    titulo: 'Italiana',
    cor: Colors.purple,
  ),
  Categoria(
    id: 'c2',
    titulo: 'Rápida & Fácil',
    cor: Colors.red,
  ),
  Categoria(
    id: 'c3',
    titulo: 'Doces',
    cor: Colors.pink,
  ),
  Categoria(
    id: 'c4',
    titulo: 'Japonesa',
    cor: Colors.blue,
  ),
  Categoria(
    id: 'c5',
    titulo: 'Lanches',
    cor: Colors.green,
  ),
  Categoria(
    id: 'c6',
    titulo: 'Brasileira',
    cor: Colors.yellow,
  ),
];

const DADOS_RECEITAS = [
  Receita(
    id: 'r1',
    categorias: ['c1'],
    titulo: 'Espaguete com Molho de Tomate',
    ingredientes: [
      '4 Tomates',
      '1 Colher de Sopa de Azeite',
      '1 Cebola',
      '250g de Espaguete',
      'Temperos',
      'Queijo (opcional)'
    ],
    passos: [
      'Corte os tomates e a cebola em pequenos pedaços.',
      'Ferva um pouco de água - adicione sal quando estiver fervendo.',
      'Coloque o espaguete na água fervente - deve estar pronto em cerca de 10 a 12 minutos.',
      'Enquanto isso, aqueça um pouco de azeite e adicione a cebola cortada.',
      'Após 2 minutos, adicione os pedaços de tomate, sal, pimenta e outros temperos.',
      'O molho estará pronto quando o espaguete estiver.',
      'Sinta-se à vontade para adicionar um pouco de queijo por cima do prato pronto.'
    ],
    duracao: 20,
  ),
  Receita(
    id: 'r2',
    categorias: ['c3'],
    titulo: 'Pudim',
    ingredientes: [
      '1 lata de leite condensado',
      '1 lata de leite (mesma medida da lata de leite condensado)',
      '3 ovos',
      '1 xícara de açúcar',
      '1/2 xícara de água'
    ],
    passos: [
      'Caramelize o açúcar e a água em uma panela.',
      'Despeje o caramelo em uma forma de pudim.',
      'Bata no liquidificador o leite condensado, o leite e os ovos.',
      'Despeje a mistura na forma caramelizada.',
      'Asse em banho-maria por cerca de 1 hora.',
      'Deixe esfriar e desenforme.'
    ],
    duracao: 90,
  ),
  Receita(
    id: 'r3',
    categorias: ['c4'],
    titulo: 'Sushi',
    ingredientes: [
      'Arroz para sushi',
      'Alga nori',
      'Peixe cru (salmão, atum)',
      'Pepino',
      'Abacate',
      'Vinagre de arroz',
      'Açúcar',
      'Sal'
    ],
    passos: [
      'Cozinhe o arroz e tempere com vinagre de arroz, açúcar e sal.',
      'Coloque uma folha de alga nori sobre a esteira de bambu.',
      'Espalhe o arroz sobre a alga, deixando uma borda livre.',
      'Adicione o peixe, pepino e abacate no centro.',
      'Enrole o sushi com a ajuda da esteira.',
      'Corte em pedaços e sirva.'
    ],
    duracao: 40,
  ),
  Receita(
    id: 'r4',
    categorias: ['c1'],
    titulo: 'Pizza',
    ingredientes: [
      '500g de farinha de trigo',
      '10g de fermento biológico',
      '300ml de água morna',
      '1 colher de chá de sal',
      '1 colher de chá de açúcar',
      '2 colheres de sopa de azeite',
      'Molho de tomate',
      'Queijo muçarela',
      'Ingredientes a gosto para cobertura'
    ],
    passos: [
      'Dissolva o fermento na água morna com açúcar.',
      'Adicione a farinha, o sal e o azeite, e misture até formar uma massa homogênea.',
      'Deixe a massa descansar até dobrar de tamanho.',
      'Abra a massa, espalhe o molho de tomate e adicione a cobertura.',
      'Asse em forno pré-aquecido a 250°C por 15-20 minutos.'
    ],
    duracao: 120,
  ),
  Receita(
    id: 'r5',
    categorias: ['c1'],
    titulo: 'Lasanha',
    ingredientes: [
      'Folhas de massa para lasanha',
      '500g de carne moída',
      '1 cebola picada',
      '2 dentes de alho picados',
      '700ml de molho de tomate',
      '500g de queijo muçarela',
      '500g de presunto',
      'Parmesão ralado',
      'Sal e pimenta a gosto'
    ],
    passos: [
      'Refogue a cebola e o alho, adicione a carne moída e cozinhe até dourar.',
      'Adicione o molho de tomate, sal e pimenta, e deixe cozinhar por 20 minutos.',
      'Em uma forma, alterne camadas de molho, massa, presunto e queijo.',
      'Finalize com molho e parmesão ralado.',
      'Asse em forno pré-aquecido a 180°C por 30-40 minutos.'
    ],
    duracao: 90,
  ),
  Receita(
    id: 'r6',
    categorias: ['c5'],
    titulo: 'Sanduíche',
    ingredientes: [
      'Pão de forma',
      'Presunto',
      'Queijo',
      'Alface',
      'Tomate',
      'Maionese',
      'Sal'
    ],
    passos: [
      'Passe maionese nas fatias de pão.',
      'Adicione presunto, queijo, alface e tomate.',
      'Tempere com sal e feche o sanduíche.',
      'Corte ao meio e sirva.'
    ],
    duracao: 10,
  ),
  Receita(
    id: 'r7',
    categorias: ['c2'],
    titulo: 'Omelete',
    ingredientes: [
      '3 ovos',
      '1 colher de sopa de leite',
      'Sal e pimenta a gosto',
      'Queijo ralado',
      'Presunto picado',
      'Cebola picada',
      'Tomate picado',
      'Cheiro-verde'
    ],
    passos: [
      'Bata os ovos com o leite, sal e pimenta.',
      'Aqueça uma frigideira antiaderente e adicione a mistura de ovos.',
      'Espalhe o queijo, presunto, cebola e tomate sobre os ovos.',
      'Cozinhe em fogo baixo até dourar.',
      'Dobre ao meio e sirva.'
    ],
    duracao: 15,
  ),
  Receita(
    id: 'r8',
    categorias: ['c5'],
    titulo: 'Coxinha',
    ingredientes: [
      '1 peito de frango desfiado',
      '1 cebola picada',
      '2 dentes de alho picados',
      'Sal e pimenta a gosto',
      '300ml de água do cozimento do frango',
      '2 xícaras de farinha de trigo',
      '1 xícara de leite',
      '2 colheres de sopa de manteiga',
      'Farinha de rosca',
      'Óleo para fritar'
    ],
    passos: [
      'Refogue a cebola e o alho, adicione o frango e tempere.',
      'Ferva a água, leite, manteiga e sal, adicione a farinha e mexa até desgrudar da panela.',
      'Modele a massa, recheie com frango e feche as coxinhas.',
      'Passe na farinha de rosca e frite em óleo quente até dourar.'
    ],
    duracao: 60,
  ),
  Receita(
    id: 'r9',
    categorias: ['c5'],
    titulo: 'Pastel',
    ingredientes: [
      'Massa para pastel',
      '300g de carne moída',
      '1 cebola picada',
      '2 dentes de alho picados',
      'Sal e pimenta a gosto',
      'Queijo ralado',
      'Óleo para fritar'
    ],
    passos: [
      'Refogue a cebola e o alho, adicione a carne moída e tempere.',
      'Recheie a massa com carne e queijo.',
      'Feche os pastéis e frite em óleo quente até dourar.'
    ],
    duracao: 30,
  ),
  Receita(
    id: 'r10',
    categorias: ['c6'],
    titulo: 'Arroz com Carne ao Molho Madeira',
    ingredientes: [
      '2 xícaras de arroz',
      '500g de carne (alcatra, filé mignon)',
      '1 cebola picada',
      '2 dentes de alho picados',
      '1 xícara de vinho madeira',
      '2 xícaras de caldo de carne',
      '2 colheres de sopa de manteiga',
      'Sal e pimenta a gosto'
    ],
    passos: [
      'Cozinhe o arroz normalmente.',
      'Refogue a cebola e o alho na manteiga, adicione a carne e cozinhe até dourar.',
      'Adicione o vinho e o caldo de carne, deixe reduzir.',
      'Sirva a carne com o molho sobre o arroz.'
    ],
    duracao: 40,
  ),
];

class ItemCategoria extends StatelessWidget {
  final String id;
  final String titulo;
  final Color cor;

  ItemCategoria(this.id, this.titulo, this.cor);

  void selecionarCategoria(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return TelaCategoria(id, titulo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecionarCategoria(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          titulo,
          style: Theme.of(context).textTheme.headline6,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              cor.withOpacity(0.7),
              cor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class TelaCategoria extends StatelessWidget {
  final String id;
  final String titulo;

  TelaCategoria(this.id, this.titulo);

  @override
  Widget build(BuildContext context) {
    final receitasCategoria = DADOS_RECEITAS.where((receita) {
      return receita.categorias.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return ItemReceita(
            titulo: receitasCategoria[index].titulo,
            ingredientes: receitasCategoria[index].ingredientes,
            passos: receitasCategoria[index].passos,
          );
        },
        itemCount: receitasCategoria.length,
      ),
    );
  }
}

class ItemReceita extends StatelessWidget {
  final String titulo;
  final List<String> ingredientes;
  final List<String> passos;

  ItemReceita({
    required this.titulo,
    required this.ingredientes,
    required this.passos,
  });

  void selecionarReceita(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return TelaDetalheReceita(
            titulo: titulo,
            ingredientes: ingredientes,
            passos: passos,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecionarReceita(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                titulo,
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 10),
              Text(
                'Clique para ver detalhes',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaDetalheReceita extends StatelessWidget {
  final String titulo;
  final List<String> ingredientes;
  final List<String> passos;

  TelaDetalheReceita({
    required this.titulo,
    required this.ingredientes,
    required this.passos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Ingredientes',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: ingredientes
                    .map((ingrediente) => Text('- $ingrediente'))
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Passos',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: passos
                    .map(
                        (passo) => Text('${passos.indexOf(passo) + 1}. $passo'))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
