import 'package:flutter/material.dart';

enum Endpoints { items, details }

/// This is the flavorized parameters that we will send to each flavor
/// Here we would add a different base_url for dev, debug, release versions.

class FlavorConfig {
  String appTitle;
  Map<Endpoints, String> apiEndpoint;
  String imageLocation;
  ThemeData theme;

  FlavorConfig({
    this.appTitle = "Flavor Tutorial",
    this.imageLocation = "assets/images/video.jpg",
  }) {
    this.theme = ThemeData.light();
  }
}
