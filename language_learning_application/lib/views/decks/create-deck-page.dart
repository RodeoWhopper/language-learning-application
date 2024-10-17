import 'package:flutter/material.dart';
import 'package:language_learning_application/components/learning-card.dart';
import 'package:language_learning_application/models/constants/card-type.dart';

import '../../utils/converters/card-type-converter.dart';

class CreateDeckPage extends StatefulWidget {
  const CreateDeckPage({super.key});

  @override
  State<CreateDeckPage> createState() => _CreateDeckPageState();
}

class _CreateDeckPageState extends State<CreateDeckPage> {
  CardType selectedItem = CardType.video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Kart Öğrenme Uygulaması"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: 'Destenizin adını giriniz...'
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 30),
              child: DropdownMenu<String>(
                hintText: "Kart türü",
                onSelected: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    selectedItem = const CardTypeConverter().fromSql(value!);
                  });
                },
                dropdownMenuEntries: CardType.values.map<DropdownMenuEntry<String>>((CardType value) {
                  switch(value){
                    case CardType.photo:
                      return DropdownMenuEntry<String>(value: const CardTypeConverter().toSql(value), label: "Fotoğraf");
                    case CardType.video:
                      return DropdownMenuEntry<String>(value: const CardTypeConverter().toSql(value), label: "Video");
                    case CardType.text:
                      return DropdownMenuEntry<String>(value: const CardTypeConverter().toSql(value), label: "Yazı");
                  }
                }).toList(),
              )
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LearningCard(),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(onPressed: (){}, child: Text("Kaydet",style: TextStyle(fontSize: 24),))
                ],
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
