import 'package:flutter_flavor_whitelabel/flavor_config.dart';
import 'package:flutter_flavor_whitelabel/main_commom.dart';
import 'package:flutter/material.dart';

void main() {
  mainCommom(
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
