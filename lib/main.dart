import 'package:example_dbs_flutter_jeph/widgtes/decorated_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String title = 'Flutter Demo Databases JEPH';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xFF6200EE,
          <int, Color>{
            50: Color(0xFFEDE7F6),
            100: Color(0xFFD1C4E9),
            200: Color(0xFFB39DDB),
            300: Color(0xFF9575CD),
            400: Color(0xFF7E57C2),
            500: Color(0xFF673AB7),
            600: Color(0xFF5E35B1),
            700: Color(0xFF512DA8),
            800: Color(0xFF4527A0),
            900: Color(0xFF311B92),
          },
        ),
      ),
      home: const MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedPage(
      title: title,
      child: ListDatabases(),
    );
  }
}

class ListDatabases extends StatelessWidget {
  const ListDatabases({
    super.key,
  });
  static const Map<String, Widget> databases = <String, Widget>{
    // 'Hive': HivePage(),
    // 'Sqflite': SqflitePage(),
    // 'Moor': MoorPage(),
    'LowDB': LowDBPage(),
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: databases.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Text(
              databases.keys.elementAt(index),
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => databases.values.elementAt(index),
              ),
            );
          },
          style: ListTileStyle.list,
          tileColor: Colors.blueGrey,
        );
      },
    );
  }
}

class LowDBPage extends StatelessWidget {
  const LowDBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
