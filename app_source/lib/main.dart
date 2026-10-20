import 'package:flutter/material.dart';

void main() {
  runApp(const FootLiveApp());
}

class FootLiveApp extends StatelessWidget {
  const FootLiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FootLive Niger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FootLive Niger ⚽'),
        backgroundColor: Colors.green.shade900,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Bienvenue sur FootLive Niger',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text('Retrouve les plateformes officielles pour suivre le football.'),
          const SizedBox(height: 20),
          officialLink(context, 'DAZN / FIFA+', 'https://www.dazn.com/'),
          officialLink(context, 'FIFA', 'https://www.fifa.com/'),
          officialLink(context, 'CAF', 'https://www.cafonline.com/'),
          const SizedBox(height: 20),
          const Text('La disponibilité des matchs dépend du pays et des droits de diffusion. Cette application ouvre les sites officiels ; elle ne diffuse pas elle-même les matchs.'),
        ],
      ),
    );
  }

  Widget officialLink(BuildContext context, String title, String url) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.sports_soccer, color: Colors.green),
        title: Text(title),
        subtitle: Text(url),
        trailing: const Icon(Icons.open_in_new),
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Ouvre $url dans ton navigateur.')),
          );
        },
      ),
    );
  }
}
