import 'package:efootball_stats_manager/features/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class LogoutButtonView extends ReactiveStatelessWidget {
  const LogoutButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: userBloc.isAuth ? () => userBloc.logout() : null,
      child: const Text(
        'logout',
      ),
    );
  }
}
