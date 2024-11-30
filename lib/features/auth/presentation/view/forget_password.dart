import 'package:delivery_app/features/auth/presentation/widget/container_to_lock_view.dart';
import 'package:delivery_app/features/auth/presentation/widget/start_page_lock.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                StartPageLock(),
              ],
            ),
            const SizedBox(height: 50),
            ContainertoLockView(),
          ],
        ),
      ),
    );
  }
}
