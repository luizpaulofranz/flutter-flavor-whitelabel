import 'package:flavour_example/flavor_config.dart';
import 'package:flavour_example/main_comom.dart';
import 'package:flutter/material.dart';

void main() {
  mainComom(
    FlavorConfig()
      ..appTitle = "Munchy Crunchy"
      ..imageLocation = "assets/images/munchy_crunchy.jpg"
      ..apiEndpoint = {
        Endpoints.items: "api.munchycrunchy.dev/items",
        Endpoints.details: "api.munchycrunchy.dev/items"
      }
      ..theme = ThemeData.dark(),
  );
}
