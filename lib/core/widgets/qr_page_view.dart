import 'package:flutter/material.dart';
import 'package:mertkarakis/core/enums/qr_type.dart';

import 'qr_page_item.dart';

class QrPageView extends StatelessWidget {
  const QrPageView({Key? key}) : super(key: key);

  static List<QrType> datas = QrType.values.toList();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: datas.length,
      itemBuilder: (BuildContext context, int index) {
        QrType data = datas[index];
        return QrPageItem(data: data);
      },
    );
  }
}
