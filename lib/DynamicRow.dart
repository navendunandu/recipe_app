import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DynamicRow extends StatefulWidget {
  const DynamicRow({super.key});

  @override
  State<DynamicRow> createState() => _DynamicRowState();
}

class _DynamicRowState extends State<DynamicRow> {

List<Widget> rows =[];

void addRow()
{
  setState(() {
    rows.add(
      const Text("hai")
    );
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

      ),
    );
  }
}