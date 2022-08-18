import 'package:flavour_example/flavor_config.dart';
import 'package:flavour_example/main_comom.dart';
import 'package:flutter/material.dart';

void main() {
  mainComom(
    FlavorConfig()
      ..appTitle = "Beans Factory"
      ..apiEndpoint = {
        Endpoints.items: "random.api.dev/items",
        Endpoints.details: "random.api.dev/item"
      }
      ..imageLocation = "assets/images/coffee_bean.jpg"
      ..theme = ThemeData.light().copyWith(
        primaryColor: Color(0xFF123456),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
              backgroundColor: Color(0xFF654321),
            ),
      ),
  );
}
