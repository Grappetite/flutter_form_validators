import 'package:flutter/material.dart';
import 'package:form_validators/form_validators.dart';

class MinLengthValidationContainer extends StatefulWidget {
  @override
  _MinLengthValidationContainerState createState() =>
      _MinLengthValidationContainerState();
}

class _MinLengthValidationContainerState
    extends State<MinLengthValidationContainer> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Minimum length 5',
            ),
            validator: Validators.minLength(5, 'Characters are less than 5'),
          ),
          RaisedButton(
            child: Text('Validate Minimum length 5 Field'),
            onPressed: () {
              formKey.currentState.validate();
            },
          )
        ],
      ),
    );
  }
}
