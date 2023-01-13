import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/ProviderController.dart';

class ProviederExample extends StatelessWidget {
  const ProviederExample({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProviderController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // provider.increment();
          context.read<ProviderController>().increment();
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("click Button"),
            Text(
              "${context.watch<ProviderController>().count}",
              style: TextStyle(fontSize: 30),
            ),
            Consumer<ProviderController>(builder: (ctx,value,child)=>Text("${value.count}"))
          ],
        ),
      ),
    );
  }
}
