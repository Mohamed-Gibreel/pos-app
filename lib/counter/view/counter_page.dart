import 'package:base_template/common/widgets/button.dart';
import 'package:base_template/common/widgets/card_product.dart';
import 'package:base_template/common/widgets/navbar.dart';
import 'package:base_template/counter/counter.dart';
import 'package:base_template/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      // appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: SafeArea(
        child: Column(
          children: [
            Navbar(),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 270,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: 50,
                itemBuilder: (context, idx) => const CardProduct(
                  name: 'Cheese burger',
                  price: 14,
                  image: 'assets/images/food.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final count = context.select((CounterCubit cubit) => cubit.state);
    return Text('$count', style: theme.textTheme.displayLarge);
  }
}
