import 'package:flutter/material.dart';
import 'package:form_validators/form_validators.dart';

class MaxLengthValidationContainer extends StatefulWidget {
  @override
  _MaxLengthValidationContainerState createState() =>
      _MaxLengthValidationContainerState();
}

class _MaxLengthValidationContainerState
    extends State<MaxLengthValidationContainer> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Maximum length 5',
            ),
            validator: Validators.maxLength(5, 'Characters are greater than 5'),
          ),
          RaisedButton(
            child: Text('Validate Maximum length 5 Field'),
            onPressed: () {
              formKey.currentState.validate();
            },
          )
        ],
      ),
    );
  }
}
