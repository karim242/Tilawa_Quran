import 'package:flutter/material.dart';
import 'package:tilawa_quran/core/utils/app_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tilawa ',
                    style: AppStyles.styleBold40Po(),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.4,
                    child: Text(
                      ' Learn Quran and Recite everyday',
                      maxLines: 3,
                      style: AppStyles.styleRegular24Po(),
                    ),
                  ),
                  Text('19:21',
                      style: AppStyles.styleBold26Rob()
                          .copyWith(color: Colors.black)),
                  Text('Ramadan 23',
                      style: AppStyles.styleBold26Rob()
                          .copyWith(color: Colors.black)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
