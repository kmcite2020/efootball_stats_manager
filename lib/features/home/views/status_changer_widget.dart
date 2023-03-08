import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import '../controller.dart';

class StatusChangerWidget extends StatelessWidget {
  const StatusChangerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: OnFormFieldBuilder(
        listenTo: home.statusFormField,
        builder: (status, onChanged) => DropdownButtonHideUnderline(
          child: DropdownButtonFormField(
            value: status,
            items: Status.values
                .map(
                  (Status e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ),
                )
                .toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
