
import 'package:flutter/material.dart';
import 'package:flutter_template/main.dart';
import 'package:flutter_template/providers/live_provider.dart';

void main() {
  LiveProvider('https://example.com/');
  runApp(const MyApp());
}