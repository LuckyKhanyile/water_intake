import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final amountController = TextEditingController();

void addWater(){
  showDialog(context: context, 
  builder: (context)=>
     AlertDialog(title: const Text("Add Water"),
    content: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,

      children: [
          const Text('Add water to your dqaily intake'),
          const SizedBox(height: 10,),
          TextField(
            controller: amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            labelText:'Amount')
          )
      ],
    ),
    actions: const [
      TextButton(onPressed: null, child: Text("cancel")),
      TextButton(onPressed: null, child: Text("Save"))
    ],
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water'),
        centerTitle: true,
        elevation: 4,
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.map))
        ],
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        floatingActionButton: FloatingActionButton(
          onPressed: addWater,
          child: const Icon(Icons.add),),
    );
  }
}