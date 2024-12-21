import 'dart:ui';

import 'package:boats_app/models/boat.dart';
import 'package:flutter/material.dart';

class BoatCard extends StatelessWidget {
  const BoatCard({
    super.key,
    required this.boat,
    required this.factorChange,
    required this.onTapSpec,
  });

  final Boat boat;
  final double factorChange;
  final VoidCallback onTapSpec;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: (1 - factorChange).clamp(0.0, 1.0),
      child: Column(
        children: [
          //-----------------------------
          // Image boat
          //-----------------------------
          Expanded(
            child: Transform.scale(
              alignment: const Alignment(0, .5),
              scale: lerpDouble(1.0, 0.7, factorChange)!,
              child: Hero(
                tag: boat.model,
                child: Image.asset(boat.imagePath),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            boat.model,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          //------------------------------
          // Owner boat
          //------------------------------
          Text.rich(
            TextSpan(
              text: 'By ',
              children: [
                TextSpan(
                  text: boat.owner,
                  style: TextStyle(
                    color: Colors.grey[900],
                  ),
                ),
              ],
              style: TextStyle(color: Colors.grey[600], height: 1),
            ),
          ),
          //-----------------------------
          // See Specs Button
          //-----------------------------
          TextButton.icon(
            label: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 16,
            ),
            icon: const Text('SPEC'),
            onPressed: onTapSpec,
            style: ButtonStyle(
              foregroundColor: WidgetStateProperty.all<Color>(
                Colors.blue[900]!,
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
