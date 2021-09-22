import 'package:bases/locator.dart';
import 'package:bases/services/navigation_service.dart';
import 'package:bases/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return constraints.maxWidth > 520
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomFlatButton(
            color: Colors.black,
            label: 'Contador StateFull',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            color: Colors.black,
            label: 'Contador Provider',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            color: Colors.black,
            label: '404',
            onPressed: () => locator<NavigationService>().navigateTo('404'),
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomFlatButton(
            color: Colors.black,
            label: 'Contador StateFull',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/stateful'),
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            color: Colors.black,
            label: 'Contador Provider',
            onPressed: () =>
                locator<NavigationService>().navigateTo('/provider'),
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            color: Colors.black,
            label: '404',
            onPressed: () => locator<NavigationService>().navigateTo('404'),
          ),
        ],
      ),
    );
  }
}
