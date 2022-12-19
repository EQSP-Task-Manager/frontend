part of 'todos_page.dart';

class _TodosDrawer extends StatefulWidget {
  const _TodosDrawer();

  @override
  State<_TodosDrawer> createState() => _TodosDrawerState();
}

class _TodosDrawerState extends State<_TodosDrawer> {
  late User? user = getIt.get<AuthRepository>().getUser();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, state) {
        return Drawer(
          backgroundColor: getIt.get<ThemeBloc>().currentTheme.backPrimary,
          width: MediaQuery.of(context).size.width * 0.8,
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              state.whenOrNull(
                loggedOut: () => Navigator.pop(context),
                loggedIn: () => Navigator.pop(context),
              );
            },
            builder: (context, state) {
              return SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Header(
                        user: user,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        user?.displayName ?? S.of(context).notLoggedIn,
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: getIt
                                  .get<ThemeBloc>()
                                  .currentTheme
                                  .labelPrimary,
                            ),
                      ),
                      const SizedBox(height: 20),
                      Divider(
                        color:
                            getIt.get<ThemeBloc>().currentTheme.labelSecondary,
                      ),
                      const SizedBox(height: 20),
                      const _ThemeModeSwitch(),
                      const Spacer(),
                      user == null
                          ? const LogInButton()
                          : const _LogOutButton(),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

class _ThemeModeSwitch extends StatefulWidget {
  const _ThemeModeSwitch();

  @override
  State<_ThemeModeSwitch> createState() => _ThemeModeSwitchState();
}

class _ThemeModeSwitchState extends State<_ThemeModeSwitch> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, state) {
        return Row(
          children: [
            Text(
              S.of(context).enableDarkMode,
              style: Theme.of(context).textTheme.body.copyWith(
                    color: context.read<ThemeBloc>().currentTheme.labelPrimary,
                  ),
            ),
            const Spacer(),
            Switch(
              value: getIt.get<ThemeBloc>().currentTheme is DarkTheme,
              activeColor: context.read<ThemeBloc>().currentTheme.white,
              activeTrackColor: getIt.get<ThemeBloc>().currentTheme.lightGrey,
              inactiveThumbColor: getIt.get<ThemeBloc>().currentTheme.lightGrey,
              inactiveTrackColor: getIt.get<ThemeBloc>().currentTheme.grey,
              onChanged: (value) {
                getIt.get<ThemeBloc>().add(value
                    ? const ThemeEvent.setDark()
                    : const ThemeEvent.setLight());
              },
            ),
          ],
        );
      },
    );
  }
}

class _Header extends StatelessWidget {
  final User? user;
  const _Header({
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 70,
      child: user == null
          ? empty
          : Image.network(
              'https://avatars.yandex.net/get-yapic/${user!.avatarId}/islands-retina-50',
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return empty;
              },
            ),
    );
  }

  Container get empty => Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: Colors.grey,
          shape: BoxShape.circle,
        ),
      );
}

class _LogOutButton extends StatelessWidget {
  const _LogOutButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt.get<AuthBloc>().add(const AuthEvent.requestLogout());
      },
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 56,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Icon(
              Icons.logout_sharp,
              color: context.read<ThemeBloc>().currentTheme.labelPrimary,
            ),
            Center(
              child: Text(
                S.of(context).logOut,
                style: Theme.of(context).textTheme.body.copyWith(
                      color:
                          context.read<ThemeBloc>().currentTheme.labelPrimary,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
