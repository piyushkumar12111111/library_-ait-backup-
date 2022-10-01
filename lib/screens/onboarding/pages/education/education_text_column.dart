import 'package:flutter/material.dart';

import '../../widgets/text_column.dart';

class EducationTextColumn extends StatelessWidget {
  const EducationTextColumn();

  @override
  Widget build(BuildContext context) {
    return const TextColumn(
      title: 'Keep learning',
      text:
          'Get access to e-books, read them or listen them with integrated book reader',
    );
  }
}
