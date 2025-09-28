import 'package:base_template/common/widgets/button.dart';
import 'package:base_template/utils/styles/flutter_extenstions.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    required this.child,
    this.variant = CustomButtonVariant.primary,
    this.size = CustomButtonSize.s,
    super.key,
    this.borderRadius,
    this.onTap,
    this.prefix,
    this.postfix,
    this.textColor,
  });
  final CustomButtonVariant? variant;
  final CustomButtonSize? size;
  final BorderRadiusGeometry? borderRadius;
  final void Function()? onTap;
  final Widget? prefix;
  final Widget child;
  final Widget? postfix;
  final Color? textColor;

  bool isSameVariant(
    CustomButtonVariant? firstVariant,
    CustomButtonVariant secondVariant,
  ) {
    return firstVariant == secondVariant;
  }

  @override
  Widget build(BuildContext context) {
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

    final defaultDimensions = <CustomButtonSize, double>{
      CustomButtonSize.s: 36,
      CustomButtonSize.m: 40,
      CustomButtonSize.l: 44,
      CustomButtonSize.xl: 48,
      CustomButtonSize.xxl: 60,
    };

    final padding = {
      CustomButtonSize.s: 9,
      CustomButtonSize.m: 11,
      CustomButtonSize.l: 12,
      CustomButtonSize.xl: 14,
      CustomButtonSize.xxl: 18,
    };

    final childSize = <CustomButtonSize, double>{
      CustomButtonSize.s: 18,
      CustomButtonSize.m: 18,
      CustomButtonSize.l: 20,
      CustomButtonSize.xl: 20,
      CustomButtonSize.xxl: 24,
    };

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
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
        type: MaterialType.circle,
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: (padding[size] ?? 0).toDouble(),
              vertical: (padding[size] ?? 0).toDouble(),
            ),
            child: Align(
              child: SizedBox(
                height: childSize[size] ?? childSize.values.first,
                width: childSize[size] ?? childSize.values.first,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
