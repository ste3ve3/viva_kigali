import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingCard extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback onPressed;

  SettingCard(this.iconData, this.title, this.onPressed);
  var isEnabled = true.obs;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        onTap: () => title != "Push Notification"?onPressed():null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          iconData,
          color: Colors.black,
        ),
        textColor: Colors.black,
        title: Text(title),
        trailing: title != "Push Notification"
            ? const Icon(Icons.chevron_right,color: Colors.black,)
            : Obx(() =>  Switch(
                  value: isEnabled.value,
                  onChanged: (value) {
                    isEnabled.toggle();
                  },
                ),
            ),
      ),
    );
  }
}
