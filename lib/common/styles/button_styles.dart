import 'package:flutter/material.dart';

final transparentButtonBlackBorder = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  shape: RoundedRectangleBorder(
      borderRadius:
      BorderRadius.circular(20.0)),
  side: const BorderSide(width: 0.8, color: Colors.black),
).merge(ButtonStyle(
  overlayColor:
      MaterialStateProperty.all<Color>(const Color.fromRGBO(0, 0, 0, 0.1)),
));

final transparentButton = ElevatedButton.styleFrom(
  backgroundColor: Colors.white,
  side: const BorderSide(width: 0.8, color: Color.fromRGBO(58, 151, 169, 1.0)),
).merge(ButtonStyle(
  overlayColor:
      MaterialStateProperty.all<Color>(const Color.fromRGBO(58, 151, 169, 1)),
));

final blackButton = ButtonStyle(
    backgroundColor: const MaterialStatePropertyAll(Colors.black),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    overlayColor: MaterialStateProperty.all<Color>(
        const Color.fromRGBO(255, 255, 255, 0.1)));

final primary500Button = ButtonStyle(
    backgroundColor:
        const MaterialStatePropertyAll(Color.fromRGBO(14, 89, 112, 1.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    overlayColor:
        MaterialStateProperty.all<Color>(const Color.fromRGBO(0, 0, 0, 0.1)));

final primary400Button = ButtonStyle(
    backgroundColor:
        const MaterialStatePropertyAll(Color.fromRGBO(58, 151, 169, 1.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    overlayColor: MaterialStateProperty.all<Color>(
        const Color.fromRGBO(14, 89, 112, 1.0)));

final primary300Button = ButtonStyle(
    backgroundColor:
        const MaterialStatePropertyAll(Color.fromRGBO(100, 201, 212, 1.0)),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    overlayColor: MaterialStateProperty.all<Color>(
        const Color.fromRGBO(14, 89, 112, 1.0)));
