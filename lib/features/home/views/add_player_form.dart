import 'package:flutter/material.dart';

import '../controller.dart';

class AddPlayerFormWidget extends StatelessWidget {
  const AddPlayerFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: home.nameTextEdit.controller,
                decoration: InputDecoration(
                  labelText: 'Player Name',
                  errorText: home.nameTextEdit.error,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: home.goalTextEdit.controller,
                decoration: InputDecoration(
                  labelText: 'Goals',
                  errorText: home.goalTextEdit.error,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(10, 60)),
                onPressed: home.valid ? home.playerForm.submit : null,
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
