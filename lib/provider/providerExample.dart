import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_flutter/provider/ProviderController.dart';

class ProviederExample extends StatelessWidget {
  const ProviederExample({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProviderController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider"),
      ),
      floatingActionButton: 
      FloatingActionButton(
        onPressed: () {
          // provider.increment();
          context.read<ProviderController>().increment();
          // Provider.of<ProviderController>(context, listen: false).increment();
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
            Text(
              "${Provider.of<ProviderController>(context, listen: true).count}",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "${Provider.of<ProviderController>(context, listen: false).count}",
              style: TextStyle(fontSize: 30),
            ),
            Consumer<ProviderController>(
                builder: (ctx, value, child) =>
                    Text("${value.count}", style: TextStyle(fontSize: 30))),
            Selector<ProviderController,int>(
              builder: (context, value, child) =>Text('$value',style: TextStyle(fontSize: 30)),
            selector:(ctx,val)=>val.count ,
            ),
            Text("${context.select<ProviderController,int>((value) => value.count)}")
          ],
        ),
      ),
    );
  }
}
