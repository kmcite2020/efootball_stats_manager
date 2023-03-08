import 'package:states_rebuilder/states_rebuilder.dart';

import 'user_model.dart';

class UserBloc {
  final _userRM = RM.inject<UserModel?>(
    () => UserModel(name: 'name', id: 'id'),
    persist: () => PersistState(
      key: 'UserModel',
      toJson: (s) => s!.toJson(),
      fromJson: (json) => UserModel.fromJson(json),
    ),
  );
  UserModel? get _user => _userRM.state;
  set _user(UserModel? val) => _userRM.state = val;

  bool get isAuth => _user != null;
  void login({
    String name = "TEST-NAME",
    String id = "TEST-ID",
  }) {
    _user = _user?.copyWith(name: name, id: id);
  }

  void logout() => _user = null;

  String? get userName => _user?.name;
  String? get userId => _user?.id;
}

final userBloc = UserBloc();
