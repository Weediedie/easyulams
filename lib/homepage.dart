import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Easy Ulam"),
        backgroundColor: Colors.blue[500],
      ),
      body: Column(children: [
        RecipeProgress(),
        TaskList(),
      ]),
    );
  }
}

class RecipeProgress extends StatelessWidget {
  const RecipeProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Boneless Chicken Adobo"),
      LinearProgressIndicator(value: 0.0),
    ]);
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Hiwain ang sibuyas, bawang"),
        TaskItem(label: "I-debone ang manok"),
        TaskItem(label: "Magpainit ng kawali"),
        TaskItem(
            label:
                "Bago tuluyang uminit, idagdag ang mantika at bawang, hintaying mag brown ang bawang"),
        TaskItem(
            label:
                "Lakasan ng onti ang apoy at ilagay ang sibuyas, gisahin ng mabuti"),
        TaskItem(
            label:
                "Ilagay ang paminta, manok, at mga pampalasa, hintaying lumabas ang taba at magmantika"),
        TaskItem(label: "Ilagay ang toyo at suka at kaunting tubig"),
        TaskItem(
            label:
                "Pakuluan hanggang matuyo ang sabaw base sa iyong preferrence"),
        TaskItem(
            label:
                "At ang panghuli, ay pakain mo sa aso ng kapitbahay nyo kase tanga ka"),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);
  @override
  _TaskItemState createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _value,
            onChanged: (newValue) => setState(() => _value = newValue)),
        Text(widget.label)
      ],
    );
  }
}
