import 'package:base_template/utils/styles/flutter_extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    required this.name,
    required this.price,
    required this.image,
    super.key,
  });
  final String name;
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      decoration: BoxDecoration(
        border: Border.all(color: context.appColor.neutral200),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: LayoutBuilder(
        builder: (ctx, constraints) => Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 140, child: Image.asset(image)),
                  const SizedBox(
                    height: 12,
                  ),
                  Divider(
                    color: context.appColor.neutral200,
                    height: 1,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    name,
                    style: context.textStyle.bodyL.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  const SizedBox(
                    height: 8,
                  ),

                  Text(
                    'AED ${price.toStringAsFixed(2)}',
                    style: context.textStyle.bodyM.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 6,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                    stops: const [.1, .9],
                    colors: [
                      context.theme.colors.primaryGradientFrom,
                      context.theme.colors.primaryGradientTo,
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                width: constraints.maxWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
