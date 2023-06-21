import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class ThemeView extends StatelessWidget {
  ThemeView({super.key});
  final List themeList = [
    {
      'title': 'Violet claire',
      'color': Colors.purple,
      'brightness': Brightness.light,
    },
    {
      'title': 'Violet sombre',
      'color': Colors.purple,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Violet foncé',
      'color': Colors.deepPurple,
      'brightness': Brightness.light,
    },
    {
      'title': 'Violet sombre',
      'color': Colors.deepPurple,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Bleu claire',
      'color': Colors.blue,
      'brightness': Brightness.light,
    },
    {
      'title': 'Bleu sombre',
      'color': Colors.blue,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Bleu foncé',
      'color': Colors.indigo,
      'brightness': Brightness.light,
    },
    {
      'title': 'Bleu sombre',
      'color': Colors.indigo,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Vert claire',
      'color': Colors.green,
      'brightness': Brightness.light,
    },
    {
      'title': 'Vert sombre',
      'color': Colors.green,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Vert foncé',
      'color': Colors.teal,
      'brightness': Brightness.light,
    },
    {
      'title': 'Vert sombre',
      'color': Colors.teal,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Orange claire',
      'color': Colors.orange,
      'brightness': Brightness.light,
    },
    {
      'title': 'Orange sombre',
      'color': Colors.orange,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Orange foncé',
      'color': Colors.deepOrange,
      'brightness': Brightness.light,
    },
    {
      'title': 'Orange sombre',
      'color': Colors.deepOrange,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Rouge claire',
      'color': Colors.red,
      'brightness': Brightness.light,
    },
    {
      'title': 'Rouge sombre',
      'color': Colors.red,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Rouge foncé',
      'color': Colors.redAccent,
      'brightness': Brightness.light,
    },
    {
      'title': 'Rouge sombre',
      'color': Colors.redAccent,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Rose claire',
      'color': Colors.pink,
      'brightness': Brightness.light,
    },
    {
      'title': 'Rose sombre',
      'color': Colors.pink,
      'brightness': Brightness.dark,
    },
    {
      'title': 'Rose foncé',
      'color': Colors.pinkAccent,
      'brightness': Brightness.light,
    },
    {
      'title': 'Rose sombre',
      'color': Colors.pinkAccent,
      'brightness': Brightness.dark,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc theme'),
        ),
        body: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            itemCount: themeList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (context, index) {
              return Card(
                  color: themeList[index]['color'],
                  child: InkWell(
                    onTap: () {
                      context.read<ThemeCubit>().changeTheme(
                          themeList[index]['color'],
                          themeList[index]['brightness']);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Container()),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(themeList[index]['title']),
                        ),
                        Container(
                          height: 25,
                          color:
                              themeList[index]['brightness'] == Brightness.light
                                  ? Colors.white54
                                  : Colors.black54,
                        ),
                      ],
                    ),
                  ));
            }),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const DemoPage()));
          },
          child: const Icon(
            Icons.open_in_new,
            color: Colors.white,
          ),
        ));
  }
}
