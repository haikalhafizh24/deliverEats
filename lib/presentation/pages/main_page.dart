import 'package:auto_route/auto_route.dart';
import 'package:deliver_eats/application/bottom_navigation/bottom_navigation_cubit.dart';
import 'package:deliver_eats/core/routes/app_router.gr.dart';
import 'package:deliver_eats/presentation/widgets/organisms/custom_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        CartRoute(),
        OrderRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BlocProvider(
          create: (context) => BottomNavigationCubit(),
          child: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
            builder: (context, state) => CustomBottomNavigationBar(
              currentIndex: state.index,
              ontap: (index) {
                context.read<BottomNavigationCubit>().setIndex(index);
                tabsRouter.setActiveIndex(index);
              },
            ),
          ),
        );
      },
    );
  }
}
