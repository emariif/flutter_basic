import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              isDismissible: false,
              showDragHandle: true,
              builder: (context) => SizedBox(
                height: 300,
                child: ListView(
                  children: [
                    ListTile(
                      onTap: () => print('Klik Foto'),
                      leading: Icon(Icons.photo),
                      title: Text('Photo'),
                    ),
                    ListTile(
                      onTap: () => print('Klik Foto'),
                      leading: Icon(Icons.download),
                      title: Text('Download'),
                    ),
                    ListTile(
                      onTap: () => print('Klik Foto'),
                      leading: Icon(Icons.upload),
                      title: Text('Upload'),
                    ),
                    ListTile(
                      onTap: () => print('Klik Foto'),
                      leading: Icon(Icons.person),
                      title: Text('Profile'),
                    ),
                    ListTile(
                      onTap: () => Navigator.pop(context),
                      leading: Icon(Icons.cancel),
                      title: Text('CANCEL'),
                      textColor: Colors.red,
                      iconColor: Colors.red,
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
