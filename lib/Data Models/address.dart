import 'package:inhouse/Data%20Models/coordinates.dart';

class Address{
  final String street;
  final String suite;
  final String city;
  final String zip;
  final Coordinates geo;

  Address({required this.street,
          required this.suite,
          required this.city,
          required this.zip,
          required this.geo});
}