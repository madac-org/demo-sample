import 'package:echo_cash/core/widgets/successfully_screen.dart';
import 'package:echo_cash/features/wallet/presentation/pages/wallet.dart';
import 'package:echo_cash/home.dart';
import 'package:echo_cash/features/notifications/presentation/pages/notifications.dart';
import 'package:echo_cash/launch.dart';
import 'package:flutter/material.dart';

import '../../features/authentication/presentation/pages/forget_password.dart';
import '../../features/authentication/presentation/pages/login.dart';
import '../../features/authentication/presentation/pages/register.dart';
import '../widgets/logged_in_drawer_widget.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const LaunchScreen(),
  'login': (context) => LoginScreen(),
  'register': (context) => RegisterScreen(),
  'forget-password': (context) => ForgetPasswordScreen(),
  'loggedInCustomDrawer': (context) => LoggedInCustomDrawer(),
  'successfull-screen': (context) {
    final Map<String, dynamic>? args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    // Check if args is not null before using it
    if (args != null) {
      return SuccessfullScreen(
        title: args['title'] ?? '',
        subtitle: args['subtitle'] ?? '',
        message: args['message'] ?? '',
      );
    } else {
      // Handle the case where args is null
      // You can navigate to an error screen or take other actions.
      // For now, you can return an empty SuccessfullScreen.
      return const SuccessfullScreen(
        title: '',
        subtitle: '',
        message: '',
      );
    }
  },
  'home': (context) => const HomeScreen(),
  'notifications': (context) => NotificationsScreen(),
  'wallet-management': (context) => const WalletScreen(),
};
