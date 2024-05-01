class AppAssets{
  static String logo = 'logo'.png;
  static String wifi = 'wifi'.png;
  static String bg = 'bg'.jpg;
  static String bg2 = 'bg2'.jpg;
}


extension ImageExt on String {
  String get png => 'assets/icons/$this.png';
  String get svg => 'assets/icons/$this.svg';
  String get jpeg => 'assets/icons/$this.jpeg';
  String get jpg => 'assets/icons/$this.jpg';
}