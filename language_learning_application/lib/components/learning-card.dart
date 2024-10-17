import 'package:flutter/material.dart';

class LearningCard extends StatefulWidget {
  const LearningCard({super.key});

  @override
  State<LearningCard> createState() => _LearningCardState();
}

class _LearningCardState extends State<LearningCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.arrow_drop_down_circle),
              title: const Text('Card title 1'),
              subtitle: Text(
                'Secondary Text',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Image.asset('assets/card-sample-image.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
