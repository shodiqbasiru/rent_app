String makeCapitalize(String text) {
  return text
      .split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join(" ");
}
