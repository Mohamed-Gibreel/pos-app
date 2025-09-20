import 'package:base_template/utils/styles/flutter_extenstions.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

enum CustomButtonVariant { primary, secondary, outline, text }

enum CustomButtonSize { s, m, l, xl, xxl }

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.variant,
    required this.size,
    required this.child,
    super.key,
    this.borderRadius,
    this.onTap,
    this.prefix,
    this.postfix,
    this.textColor,
  });
  final CustomButtonVariant variant;
  final CustomButtonSize size;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;
  final Widget? prefix;
  final String child;
  final Widget? postfix;
  final Color? textColor;

  bool isSameVariant(
    CustomButtonVariant firstVariant,
    CustomButtonVariant secondVariant,
  ) {
    return firstVariant == secondVariant;
  }

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = {
      CustomButtonSize.s: 18,
      CustomButtonSize.m: 20,
      CustomButtonSize.l: 26,
      CustomButtonSize.xl: 30,
      CustomButtonSize.xxl: 36,
    };

    final verticalPadding = {
      CustomButtonSize.s: 10,
      CustomButtonSize.m: 12,
      CustomButtonSize.l: 14,
      CustomButtonSize.xl: 16,
      CustomButtonSize.xxl: 18,
    };

    final stops = [.1, .9];

    final color = {
      CustomButtonVariant.primary: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        stops: stops,
        colors: [
          context.theme.colors.primaryGradientFrom,
          context.theme.colors.primaryGradientTo,
        ],
      ),
      CustomButtonVariant.secondary: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        stops: stops,
        colors: [
          context.theme.colors.neutralGradientFrom,
          context.theme.colors.neutralGradientTo,
        ],
      ),
      CustomButtonVariant.outline: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomCenter,
        stops: stops,
        colors: [
          context.theme.colors.outlineGradientFrom,
          context.theme.colors.outlineGradientTo,
        ],
      ),
    };

    final defaultTextColor = {
      CustomButtonVariant.primary: Colors.white,
      CustomButtonVariant.secondary: Colors.white,
      CustomButtonVariant.outline: context.theme.colors.neutral800,
    };

    final defaultTextSize = {
      CustomButtonSize.s: context.theme.textStyle.bodyM.fontSize,
      CustomButtonSize.m: context.theme.textStyle.bodyM.fontSize,
      CustomButtonSize.l: context.theme.textStyle.bodyM.fontSize,
      CustomButtonSize.xl: context.theme.textStyle.bodyM.fontSize,
      CustomButtonSize.xxl: context.theme.textStyle.bodyL.fontSize,
    };

    // final tappedColor = {
    //   CustomButtonVariant.primary: context.theme.colors.primary800,
    //   CustomButtonVariant.secondary: context.theme.colors.neutral800,
    //   CustomButtonVariant.outline: context.theme.colors.neutral800,
    // };

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        gradient: isSameVariant(variant, CustomButtonVariant.outline)
            ? null
            : color[variant],
        border: isSameVariant(variant, CustomButtonVariant.outline)
            ? GradientBoxBorder(
                gradient: color[variant]!,
              )
            : null,
      ),
      child: Material(
        clipBehavior: Clip.hardEdge,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (horizontalPadding[size] ?? 0).toDouble(),
              vertical: (verticalPadding[size] ?? 0).toDouble(),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8,
              children: [
                if (prefix != null) prefix!,
                if (prefix == null && postfix != null) const SizedBox(),
                Text(
                  child,
                  style: context.theme.textStyle.bodyM.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: defaultTextSize[size],
                    color:
                        defaultTextColor[variant] ?? textColor ?? Colors.white,
                  ),
                ),
                if (postfix != null) postfix!,
                if (postfix == null && prefix != null) const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
