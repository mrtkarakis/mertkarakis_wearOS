enum QrType {
  github("GitHub", "assets/qr/github_qr.png", "assets/icons/github.png"),
  medium("Medium", "assets/qr/medium_qr.png", "assets/icons/medium.png"),
  linkedin(
      "Linkedin", "assets/qr/linkedin_qr.png", "assets/icons/linkedin.png");

  final String name;
  final String qrPath;
  final String iconPath;
  const QrType(this.name, this.qrPath, this.iconPath);
}
