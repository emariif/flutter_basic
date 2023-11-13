import 'package:flutter/material.dart';

class DialogSnackPage extends StatelessWidget {
  const DialogSnackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog dan Snackbar'),
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    title: const Text('Belajar Dialog'),
                    content: const Text(
                      'Ini adalah pembelajaran terkait dialog text',
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('CANCEL'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('Dialog'),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: const Text(
                      'Anda akan menghapus',
                    ),
                    action: SnackBarAction(
                      label: 'Cancel',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                    behavior: SnackBarBehavior.floating,
                    margin: const EdgeInsets.all(24),
                    duration: const Duration(seconds: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    ),
                    // elevation: 2,
                  ),
                );
              },
              child: const Text('SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
