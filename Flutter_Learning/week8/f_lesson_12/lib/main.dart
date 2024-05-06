import 'package:flutter/material.dart';

import 'model/car_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Car> data;
  @override
  void initState() {
    super.initState();
    data = [];
  }

  @override
  Widget build(BuildContext context) {
    final future =
        DefaultAssetBundle.of(context).loadString('assets/api/api.json');
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          // else if (snapshot.hasData) {
          //   final carModel =
          //       CarModel.fromJson(jsonDecode(snapshot.data.toString()));
          //   return Column(
          //     children: [
          //       Wrap(
          //         children: [
          //           ElevatedButton(
          //             onPressed: () {
          //               setState(() {
          //                 data = carModel.bmw;
          //               });
          //             },
          //             child: const Text('BMW'),
          //           ),
          //           ElevatedButton(
          //             onPressed: () {
          //               setState(() {
          //                 data = carModel.audi;
          //               });
          //             },
          //             child: const Text('Audi'),
          //           ),
          //           ElevatedButton(
          //             onPressed: () {
          //               setState(() {
          //                 data = carModel.mercedes;
          //               });
          //             },
          //             child: const Text('Mercedes'),
          //           ),
          //           ElevatedButton(
          //             onPressed: () {
          //               setState(() {
          //                 data = carModel.porsche;
          //               });
          //             },
          //             child: const Text('Porsche'),
          //           ),
          //         ],
          //       ),
          //       SizedBox(
          //         height: 600,
          //         child: ListView.builder(
          //           itemCount: data.length,
          //           itemBuilder: (BuildContext context, int index) {
          //             return ListTile(
          //               title: Text(data[index].model.toString()),
          //               subtitle: Text(data[index].price.toString()),
          //               trailing: Text(data[index].year.toString()),
          //             );
          //           },
          //         ),
          //       ),
          //     ],
          //   );
          // }
          else {
            return const Center(child: Text('No data'));
          }
        },
      ),
    );
  }
}
