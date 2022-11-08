extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String fromFileName() {
    String str = this;
    if (contains("/")) {
      str = split("/")[1];
    }

    if (str.contains(".")) {
      str = str.split(".")[0];
    }

    if (str.contains("_")) {
      str = str.replaceAll("_", " ");
    }

    return str.capitalize();
  }
}
