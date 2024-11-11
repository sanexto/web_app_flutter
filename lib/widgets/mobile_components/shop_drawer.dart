import 'package:flutter/material.dart';

import 'package:goodcoffee/values/responsive_app.dart';
import 'package:goodcoffee/values/string_app.dart';

class ShopDrawer extends StatelessWidget {
  const ShopDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ResponsiveApp responsiveApp = ResponsiveApp(context);

    return SizedBox(
      width: responsiveApp.drawerWidth,
      child: Drawer(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/cody.jpg'),
              ),
              accountName: Text(
                contactNameStr,
                style: Theme.of(context).primaryTextTheme.headlineSmall!,
              ),
              accountEmail: Text(
                contactEmailStr,
              ),
            ),
            getItem(
              context: context,
              icon: Icons.article_outlined,
              title: aboutUsStr,
              onTap: () {},
            ),
            getItem(
              context: context,
              icon: Icons.location_on_outlined,
              title: locationStr,
              onTap: () {},
            ),
            getItem(
              context: context,
              icon: Icons.lock_outline,
              title: loginStr,
              onTap: () {},
            ),
            ListTile(
              title: Padding(
                padding: responsiveApp.edgeInsetsApp.onlyMediumTopEdgeInsets,
                child: Text(
                  copyrightStr,
                  style: Theme.of(context)
                      .primaryTextTheme
                      .bodyMedium!
                      .copyWith(
                        color: Colors.blueGrey[300],
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required GestureTapCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
      title: Text(
        title,
        style: Theme.of(context).primaryTextTheme.bodyMedium!,
      ),
      onTap: onTap,
    );
  }
}
