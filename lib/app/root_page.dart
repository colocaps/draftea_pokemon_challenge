import 'package:draftea_pokemon_challenge/core/connectivity/connectivity_check_bloc.dart';
import 'package:draftea_pokemon_challenge/ui/widgets/no_internet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RootPage extends StatefulWidget {
  const RootPage({required this.child, super.key});

  final Widget child;

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ConnectivityCheckBloc()
            ..add(const ConnectivityCheckEvent.checkConnectivity()),
      child: PopScope(
        canPop: false,
        child: BlocConsumer<ConnectivityCheckBloc, ConnectivityCheckState>(
          listener: (context, state) {
            state.whenOrNull(notConnectedState: () {});
          },
          builder: (context, state) {
            return Stack(
              children: [
                AbsorbPointer(
                  absorbing: state is NotConnectedConnectivityCheckState,
                  child: Opacity(
                    opacity: state is NotConnectedConnectivityCheckState
                        ? 0.4
                        : 1,
                    child: Scaffold(
                      backgroundColor: Colors.white,
                      body: widget.child,
                    ),
                  ),
                ),
                state.maybeWhen(
                  notConnectedState: NoInternetWidget.new,
                  orElse: Container.new,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
