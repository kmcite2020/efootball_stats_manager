import 'package:efootball_stats_manager/features/user/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class LogoutButtonView extends ReactiveStatelessWidget {
  const LogoutButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: userBloc.isAuth ? () => userBloc.logout() : null,
        child: const Text(
          'logout',
        ),
      ),
    );
  }
}

class UserCardView extends ReactiveStatelessWidget {
  const UserCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: (userBloc.isAuth)
          ? Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('CURRENT USER', textScaleFactor: 2),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: null, child: Text(userBloc.userId!)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: null, child: Text(userBloc.userName!)),
                ),
              ],
            )
          : Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "NOT LOGGED IN",
                    textScaleFactor: 2,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
