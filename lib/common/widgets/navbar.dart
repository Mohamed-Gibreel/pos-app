import 'package:base_template/utils/styles/flutter_extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: context.appColor.neutral100),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 2,
            child: Row(
              spacing: 16,
              children: [
                SvgPicture.asset('assets/icons/List.svg'),
                Row(
                  spacing: 4,
                  children: [
                    SvgPicture.asset('assets/icons/Logo.svg'),
                    Text(
                      'ClaPos',
                      style: context.textStyle.heading4.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: context.appColor.neutral200),
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Row(
                spacing: 14,
                children: [
                  SvgPicture.asset('assets/icons/Glass.svg'),
                  Expanded(
                    child: TextField(
                      style: context.textStyle.bodyS.copyWith(
                        color: context.appColor.neutral700,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: context.textStyle.bodyS.copyWith(
                          color: context.appColor.neutral400,
                        ),
                        hintText: 'Search Product...',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
