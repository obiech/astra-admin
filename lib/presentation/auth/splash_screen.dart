import 'package:astra_admin_app/application/auth/auth/auth_bloc.dart';
import 'package:astra_admin_app/presentation/core/routes/app_router.gr.dart';
import 'package:astra_admin_app/presentation/core/theming/gradients.dart';
import 'package:astra_admin_app/presentation/core/widgets/logo.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Defines app splash screen.
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FocusScope.of(context).unfocus();
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
                initial: (_) {},
                authenticated: (_) {
                  AutoRouter.of(context).push(const HomeScreenRoute());
                  // AutoRouter.of(context).pushAndPopUntil(
                  //   const HomeScreenRoute(),
                  //   predicate: (route) => false,
                  // );
                },
                unauthenticated: (_) {
                  AutoRouter.of(context).push(const PhoneNumberScreenRoute());
                });
          },
        ),
      ],
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: Gradients.astroAdminPrimaryGradient,
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            const Logo(logoWithText: true),
          ],
        ),
      ),
    );
  }
}
