import 'package:cnevent/model/event.dart';
import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final Event event;

  final VoidCallback onPressed;

  const ExploreCard(this.event,this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: () => onPressed(),
      child: Image.network(
        event.image,
        fit: BoxFit.cover,
      ),
    );
  }
}
