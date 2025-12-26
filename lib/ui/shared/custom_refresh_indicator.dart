import 'dart:math' as math;

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:draftea_pokemon_challenge/ui/colors/colors.dart';

class CustomRefreshIndicator extends StatelessWidget {
  const CustomRefreshIndicator({
    required this.child,
    required this.onRefresh,
    this.padding = const EdgeInsets.only(top: 16),
    this.controller,
    this.notificationPredicate = _defaultNotificationPredicate,
    super.key,
  });

  final Widget child;
  final Future<void> Function() onRefresh;
  final EdgeInsetsGeometry padding;
  final ScrollController? controller;
  final ScrollNotificationPredicate notificationPredicate;

  static bool _defaultNotificationPredicate(ScrollNotification notification) {
    // En NestedScrollView, las notificaciones del scroll interno suelen venir con
    // depth 1 (o más). Si usamos el predicate por defecto (tipo depth == 0),
    // el refresh nunca se dispara.
    if (notification.metrics.axis != Axis.vertical) return false;
    return notification.depth <= 1;
  }

  @override
  Widget build(BuildContext context) {
    return CustomMaterialIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(milliseconds: 1000), () {});
        await onRefresh();
      },
      notificationPredicate: notificationPredicate,
      indicatorBuilder: (BuildContext context, IndicatorController controller) {
        return Padding(
          padding: const EdgeInsets.all(6),
          child: CircularProgressIndicator(
            strokeWidth: 6,
            color: CustomColors.primary,
            value: controller.state.isLoading
                ? null
                : math.min(controller.value, 1),
          ),
        );
      },
      child: child,
    );
  }
}
