import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Map<String, dynamic> map = {
      'name' : 'Mark',
      'date_of_birth' : 1990
    };


    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'First Page',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () async{
                bool? result = await Navigator.pushNamed(context, '/second', arguments: map) as bool?;
                if(result != null){
                  print(result);
                }
              },
              child: const Text('Go to second page'),
            )
          ],
        ),
      ),
    );

  }
}