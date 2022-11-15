import 'package:flutter/material.dart';
import 'package:layout/components/box_card.dart';

import '../../themes/theme_colors.dart';
import '../color_dot.dart';
import '../content_division.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 2,bottom: 4),
          child: Text(
            "Pontos da conta",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: BoxCard(boxContent: _AccountPointsContent()),
        ),
      ],
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
           padding: const EdgeInsets.only(bottom:4.0,),
           child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pontos totais:', style: Theme.of(context).textTheme.bodyText2),
                ],
              ),
            ],
        ),
         ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('3000', style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(4.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Objetivos:',
                  style: Theme.of(context).textTheme.headline6),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0, bottom: 3.0),
              child: ColorDot(color: ThemeColors.accountpoints['circle1']),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Text('Entrega Gratis: 15000pts',
                      style: Theme.of(context).textTheme.bodyText2),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: ColorDot(color: ThemeColors.accountpoints['circle2']),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('1 mês de streaming: 30000pts',
                    style: Theme.of(context).textTheme.bodyText2),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
