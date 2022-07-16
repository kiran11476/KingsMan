import 'package:flutter/material.dart';
import 'package:kingsman/view/screens/settings/userprofile.dart';
import 'package:settings_ui/settings_ui.dart';

class ScreenSetting extends StatelessWidget {
  const ScreenSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Expanded(
          child: SettingsList(
            sections: [
              SettingsSection(
                title: const Text('Account'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.list),
                    title: const Text('Orders'),
                    value: const Text('Your Orders'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.account_box_outlined),
                    title: const Text('Profile'),
                    value: const Text('profile'),
                  ),
                  SettingsTile.navigation(
                    onPressed: (context) => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (ctx) => const AddAddressPage())),
                    leading: const Icon(Icons.home),
                    title: const Text('Address'),
                    value: const Text('Address'),
                  ),
                ],
              ),
              SettingsSection(
                title: const Text('Common'),
                tiles: <SettingsTile>[
                  SettingsTile.navigation(
                    leading: const Icon(Icons.language),
                    title: const Text('Language'),
                    value: const Text('English'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.notifications),
                    title: const Text('Notifications'),
                  ),
                  SettingsTile.switchTile(
                    onToggle: (value) {},
                    initialValue: true,
                    leading: const Icon(Icons.format_paint),
                    title: const Text('Enable custom theme'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.supervised_user_circle_outlined),
                    title: const Text('Chat with us'),
                  ),
                  SettingsTile.navigation(
                    leading: const Icon(Icons.privacy_tip_outlined),
                    title: const Text('About'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
