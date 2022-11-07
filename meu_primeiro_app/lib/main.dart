import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final imageUrl = 'https://avatars.githubusercontent.com/u/102123924?v=4';
  final imageUrl1 =
      'https://media-exp1.licdn.com/dms/image/C5103AQEsrgt8YX9qOg/profile-displayphoto-shrink_200_200/0/1516584130419?e=1673481600&v=beta&t=IIET6PdmclvRNpCKkSi8-L7-jg-ZPx2nhMzWr5aBZIU';
  final imageUrl2 =
      'https://www.softdownload.com.br/wp-content/uploads/2018/03/como_trocar_foto_perfil_facebook.jpg';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('About Me'),
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Pessoal',
              ),
              Tab(
                text: 'Profissional',
              )
            ],
          ),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  accountName: Text('Daniel França'),
                  accountEmail: Text('daniel_fransa@hotmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('E-mail comercial'),
                  subtitle: Text('daniel.franca@fatec.sp.gov.br'),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [_buildPersonalContent(), _buildProfessionalContent()],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text('Follow Me'),
          icon: const Icon(Icons.favorite),
        ),
      ),
    );
  }

  _buildProfessionalContent() {
    final text2 =
        'Sou formando em Administração de Empresa pela UNAR- Araras e Engenharia de Produção pela UNIVESP - São Paulo, trabalhei por mais de 16 anos na indústria com controle de pessoas, e com melhoria de processos produtivos, no inicio do ano de 2022 decidi mudar minha carreira para o ramo da tecnologia, entrei na FATEC no curso de DSM e tenho me dedicado muito aos estudos de diversas linguagens de computação ';

    final text3 =
        'Tenho estudado as linguagens: HTML, CSS, Javascript, C++, PHP, JAVA, C#, DART e estou gostando muito dos curso de Flutter';

    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Vida Profissional',
            style: GoogleFonts.adamina(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            text2,
            style: GoogleFonts.roboto(
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Meus Estudos',
            style: GoogleFonts.adamina(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            text3,
            style: GoogleFonts.roboto(
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            'Minhas Redes',
            style: GoogleFonts.adamina(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.github),
          title: Text('GitHub'),
          subtitle: Text('https://github.com/danielfransa'),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.linkedinIn),
          title: Text('Linkedin'),
          subtitle: Text('www.linkedin.com/in/danielfransa'),
        ),
        ListTile(
          leading: Icon(FontAwesomeIcons.instagram),
          title: Text('Intragram'),
          subtitle: Text('https://www.instagram.com/danielfransa/'),
        )
      ],
    );
  }

  _buildPersonalContent() {
    final text1 =
        'Oi Sou o Daniel estudante do 2° semestre de Desenvolvimento de Softwares Multiplataformas, tenho 37 anos e gosto muito de técnologia, em meus horários vagos gosto de assistir vídeos sobre o mundo da tecnologia e jogar videogames, porem ultimamente não tenho jogado muito, pois estou me dedicando aos estudos de programação';

    return ListView(
      children: [
        SizedBox(
          child: PageView(
            children: [
              Image.network(
                imageUrl,
                width: double.infinity,
              ),
              Image.network(
                imageUrl1,
                width: double.infinity,
              ),
              Image.network(
                imageUrl2,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
          height: 250,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 16),
          child: Center(
            child: Text(
              'Daniel França',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            FlutterLogo(),
            Text('Flutter Developer'),
          ],
        ),
        const Divider(
          indent: 22,
          endIndent: 22,
          height: 15,
          thickness: 1,
          color: Colors.blue,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Text(
            text1,
            style: const TextStyle(height: 1.5),
            textAlign: TextAlign.justify,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
