import 'package:flutter/material.dart';
import 'package:flutter_basic/widgets/section04/bottom_navigation_bar_page.dart';
import 'package:flutter_basic/widgets/section04/bottom_sheet_page.dart';
import 'package:flutter_basic/widgets/section04/dialog_snack_page.dart';
import 'package:flutter_basic/widgets/section04/tab_bar_page.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Page'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 150,
              padding: const EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              color: Colors.deepPurple,
              child: const Text(
                'DASHBOARD MENU',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomSheetPage(),
                      ),
                    ),
                    title: Text('Bottom Sheet Page'),
                    leading: Icon(Icons.photo),
                  ),
                  ListTile(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigationBarPage(),
                      ),
                    ),
                    title: Text('Bottom Navigation Bar Page'),
                    leading: Icon(Icons.dashboard),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DialogSnackPage(),
                        ),
                      );
                    },
                    title: Text('Dialog Snack Bar'),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TabBarPage(),
                        ),
                      );
                    },
                    title: Text('Whatsapp'),
                    leading: Icon(Icons.call),
                  ),
                  ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    title: Text('Person'),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text('Photo'),
                    leading: Icon(Icons.photo),
                  ),
                  ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    title: Text('Person'),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text('Photo'),
                    leading: Icon(Icons.photo),
                  ),
                  ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    title: Text('Person'),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text('Photo'),
                    leading: Icon(Icons.photo),
                  ),
                  ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    title: Text('Person'),
                    leading: Icon(Icons.person),
                  ),
                  ListTile(
                    title: Text('Photo'),
                    leading: Icon(Icons.photo),
                  ),
                  ListTile(
                    title: Text('Setting'),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    title: Text('Person'),
                    leading: Icon(Icons.person),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
