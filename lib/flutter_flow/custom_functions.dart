import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? kwhCalculo(
  int? watts,
  double? horas,
  int? dias,
  int? quantidade,
) {
  // Code that performs the following calculation: multiply the value of the 'watts' variable by the value of the 'horas' variable and then by the value of the 'dias' variable, then divide the result by 1000. after that, it should multiply by the value of 'quantidade' variable.
  if (watts == null || horas == null || dias == null || quantidade == null) {
    return null; // Return null if any input is null
  }

  double result = (watts * horas * dias) / 1000; // Perform the calculation
  return result * quantidade; // Multiply by quantidade and return
}

double? btuAreaCalculo(
  double? metros,
  int? pessoas,
  int? eletronicos,
  int? janelas,
) {
  // the formula multiplies the value of the 'metros' variable by 600, then adds to that result the result of the 'pessoas' variable multiplied by 600, added to the value of the 'eletronicos' variable multiplied by 600, and added to the value of the 'janelas' variable multiplied by 600
  if (metros == null || pessoas == null || janelas == null) {
    return null; // Return null if any input is null
  }

  double result = (metros * 600) +
      (pessoas * 600) +
      (janelas * 600); // Perform the calculation
  return result; // Return the final result
}
