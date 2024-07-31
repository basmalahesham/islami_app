import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Image.asset(
            'assets/images/radio_image.png',
            width: 250,
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.skip_previous,size: 35,color: theme.canvasColor,),
              Icon(Icons.play_arrow,size: 35,color: theme.canvasColor,),
              Icon(Icons.stop,size: 35,color: theme.canvasColor,),
              Icon(Icons.skip_next,size: 35,color: theme.canvasColor,),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
