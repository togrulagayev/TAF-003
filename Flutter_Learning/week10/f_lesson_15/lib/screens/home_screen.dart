import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/all_providers.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.read(titleProvider);
    int balance = ref.watch(balanceProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Balance is: ',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 30),
            Text(
              '$balance AZN',
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(color: Colors.blue),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ref.read(balanceProvider.notifier).state -= 100;
                    debugPrint('$balance');
                  },
                  child: Text(
                    'Sent 100 AZN',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.red,
                        ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ref.read(balanceProvider.notifier).state += 100;
                    debugPrint('$balance');
                  },
                  child: Text(
                    'Get 100 AZN',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.green,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
