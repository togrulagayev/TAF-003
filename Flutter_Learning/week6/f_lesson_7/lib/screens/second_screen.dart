import 'package:flutter/material.dart';

var contactList = [
  'Luffy',
  'Zoro',
  'Nami',
  'Usopp',
  'Sanji',
  'Chopper',
  'Robin',
  'Franky',
  'Brook',
  'Jinbe',
  'Doflamingo',
  'Kaido',
  'Big Mom',
  'Blackbeard',
  'Akainu',
  'Aokiji',
  'Kizaru',
  'Garp',
  'Sengoku',
  'Rayleigh',
  'Shanks',
  'Dragon',
  'Mihawk',
  'Buggy',
  'Law',
];

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Navigators'),
      ),
      body: ListView.builder(
        itemCount: contactList.length,
        itemBuilder: (BuildContext context, int index) {
          debugPrint('Building item ${index + 1}');
          return Card(
            child: ListTile(
              title: Text(contactList[index]),
              subtitle: Text('${contactList[index]}@gmail.com'),
            ),
          );
        },
      ),
    );
  }
}
