import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fminimal/common/api/firebase_repository.dart';
import 'package:fminimal/common/api/shared_prefs_repository.dart';
import 'package:fminimal/scenes/setup/domain/bloc/setup_bloc.dart';
import 'package:fminimal/theme/common/retry_widget.dart';
import 'package:fminimal/theme/m_theme.dart';
import 'package:fminimal/utils/route_generator.dart';

class SetupPage extends StatelessWidget {
  const SetupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SetupBloc(),
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (_) => FirebaseRepository(),
          ),
          RepositoryProvider(
            create: (_) => SharedPrefsRepository(),
          ),
        ],
        child: const SetupPageView(),
      ),
    );
  }
}

class SetupPageView extends StatefulWidget {
  const SetupPageView({Key? key}) : super(key: key);

  @override
  State<SetupPageView> createState() => _SetupPageViewState();
}

class _SetupPageViewState extends State<SetupPageView> {
  @override
  void initState() {
    super.initState();
    context.read<SetupBloc>().add(
          SetupStarted(
            [
              context.read<FirebaseRepository>(),
              context.read<SharedPrefsRepository>(),
            ],
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    final theme = MTheme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Center(
        child: BlocConsumer<SetupBloc, SetupState>(
          listener: (context, state) {
            if (state is SetupStateSuccess) {
              Navigator.of(context).pushReplacementNamed(AppRoutes.auth);
            }
          },
          builder: (context, state) {
            if (state is SetupStateFailure) {
              return RetryWidget(
                error: state.error,
              );
            } else {
              return CircularProgressIndicator(
                color: theme.primaryColor,
              );
            }
          },
        ),
      ),
    );
  }
}
