import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic>? map = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    String? name;
    if(map != null){
       name = map['name'];
      print('Name is $name');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Routing Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Second page ${name != null ? 'and name $name' : ''}',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: const Text('Go to first page'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)
              )
            )
          ],
        ),
      ),
    );
  }
}
