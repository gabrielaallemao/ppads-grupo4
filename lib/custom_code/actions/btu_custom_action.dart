// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> btuCustomAction(
  double? metros,
  int? pessoas,
  int? janelas,
) async {
  // formula that returns the result of metros multiplied by 600, plus pessoas multiplied by 600, plus janelas multiplied by 600, then sum
  // Calculate the total BTUs based on the given formula
  int totalBtu = ((metros ?? 0) * 600).toInt() +
      ((pessoas ?? 0) * 600) +
      ((janelas ?? 0) * 600);
  return totalBtu;
}
