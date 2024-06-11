import 'package:flutter/material.dart';
import 'package:hive_flutter_full_tutorial_with_clean_architecture/basic_hive.dart';

class ViewClass extends StatefulWidget {
  const ViewClass({super.key});

  @override
  State<ViewClass> createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
  final basicHive = BasicHive();

  /*<<-------------------------->>
    <<------>> business logics
    <<-------------------------->>*/
  void pressedOnSetValues() async {
    await basicHive.setupValues();
  }

  void pressedOnGetValues() async {
    await basicHive.printValues();
  }

  /*<<-------------------------->>
    <<-------->> builder method
    <<-------------------------->>*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: kToolbarHeight + 10,
            ),
            Center(
              child: ElevatedButton(
                onPressed: pressedOnSetValues,
                child: const Text("Set Values"),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: ElevatedButton(
                onPressed: pressedOnGetValues,
                child: const Text("Get Values"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
