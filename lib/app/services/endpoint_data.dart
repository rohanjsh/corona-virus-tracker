import 'package:flutter/material.dart';

class EndpointData {
  EndpointData({required this.value, this.date});
  final int value;
  final DateTime? date;

  @override
  String toString() => 'date: $date, value: $value';
}
