import 'package:flutter/material.dart';

extension MaterialStatePropertyExt<T> on T {
  MaterialStateProperty<T> resolveProperty() {
    return MaterialStateProperty.resolveWith<T>((states) => this);
  }
}
