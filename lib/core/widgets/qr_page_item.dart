import 'package:flutter/material.dart';
import 'package:mertkarakis/core/enums/qr_type.dart';

class QrPageItem extends StatelessWidget {
  const QrPageItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  final QrType data;
  static Size deviceSize = const Size(256, 256);
  @override
  Widget build(BuildContext context) {
    deviceSize = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        qrImage(),
        const SizedBox(height: 12),
        label(),
      ],
    );
  }

  Row label() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset(data.iconPath, height: 20),
          const SizedBox(width: 13),
          Text(data.name),
        ],
      );

  Image qrImage() => Image.asset(data.qrPath, height: deviceSize.height / 1.8);
}
