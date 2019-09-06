# Form Validators
A Flutter plugin which provides a set of validators that can be used by form fields.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Unit Test](https://img.shields.io/badge/unit%20tests-passing-green)
[![Author](https://img.shields.io/badge/author-wisecrab-green)](https://wisecrab.com)

## About
This flutter plugin provides utility functions to make form validation easy. This plugin is inspiration from Angular Validators class.

## Version
This plugin supports dart version 2.2+

## How to use Form Validators

### For Example:
#### Validating if TextFormField is non-empty and has valid email address
```dart
TextFormField(
  decoration: InputDecoration(
    labelText: 'Email',
  ),
  validator: Validators.compose([
    Validators.required('Email is required'),
    Validators.email('Invalid email address'),
  ]),
),
```

## Api Overview
### Utility Functions
- [Required](#required)
- [Minimum](#minimun)
- [Maximum](#maximun)
- [Email](#email)
- [Minimum Length](#minimum-length)
- [Maximum Length](#maximum-length)
- [Pattern](#pattern)
- [Compose](#compose)

All validator functions have have return type of `FormFieldValidator<String>` which is required type for `validator` field in `TextFormField`.

___

### Required
`Validators.required(String errorMessage)` is used to validate if TextFormField is non-empty.

#### Example
This code will validate if name is not empty.
```dart
TextFormField(
  decoration: InputDecoration(
    labelText: 'Name',
  ),
  validator: Validators.required('Name is required'),
),
```
#### Parameters

| Params        | Description   |
| ------------- | ------------- |
| errorMessage  | `String` value is passed to this parameter to show an error in case of validation failure.|

___

### Minimum
`Validators.min(double min, String errorMessage)` is used to validate if TextFormField's value is greater than or equal to the provided number. Number can be integer or double.

#### Example
This code will validate TextFormField's value and show an error in case its value is non-empty and less than 5.
```dart
  TextFormField(
    keyboardType: TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
    decoration: InputDecoration(
      labelText: 'Minimum 5',
    ),
    validator: Validators.min(5, 'Value less than 5 not allowed'),
  ),

```

#### Parameters
`Validators.min` takes two parameters.

| Params        | Description   |
| ------------- | ------------- |
|       min     | `double` value is passed to this param. Validator will return error if TextFormField is non-empty and its value is less than `min`|
| errorMessage  | `String` value is passed to this parameter to show error in case of validation failure|

---

### Maximum
`Validators.max(double max, String errorMessage)` is used to validate if TextFormField's value is less than or equal to the provided number. Number can be integer or double.

#### Example
This code will validate TextFormField's value and show error in case its value is non-empty and greater than 5.
```dart
  TextFormField(
    keyboardType: TextInputType.numberWithOptions(
      decimal: true,
      signed: true,
    ),
    decoration: InputDecoration(
      labelText: 'Maximum 5',
    ),
    validator: Validators.max(5, 'Value greater than 5 not allowed'),
  ),

```

#### Parameters
`Validators.max` takes two parameters.

| Params        | Description   |
| ------------- | ------------- |
|       max     | `double` value is passed to this param. Validator will return error if TextFormField is non-empty and its value is greater than `max`|
| errorMessage  | `String` value is passed to this parameter to show error in case of validation failure|

---

### Email
`Validators.email(String errorMessage)` is used to validate email address. 

Its uses regex of HTML5 for email validation.
Its regex is ```^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$```

#### Example
This code will validate email and show error if TextFormField's value is non-empty and email address is invalid.
```dart
  TextFormField(
    decoration: InputDecoration(
      labelText: 'Email',
    ),
    validator: Validators.email('Invalid email address'),
  ),
```

#### Parameters

| Params        | Description   |
| ------------- | ------------- |
| errorMessage  | `String` value is passed to this parameter to show an error in case of validation failure.|


---
**_Note:_** _If `TextFormField`'s value is empty, then this validator won't return any error because it considers `TextFormField` as optional. Use this validation with combination of [Required](#required) validator if specified `TextFormField` is compulsory. Check [Compose](#compose) validator to find out how to combine two validators_

___