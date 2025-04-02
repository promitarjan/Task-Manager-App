import 'package:flutter/material.dart';
import 'package:task_manager_new/screen/task/cancelTasklistScreen.dart';
import 'package:task_manager_new/screen/task/completedTasklistScreen.dart';
import 'package:task_manager_new/screen/task/newTasklistScreen.dart';
import 'package:task_manager_new/screen/task/progressTasklistScreen.dart';

import 'package:task_manager_new/utility/widgets/tm_app_bar.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    newTaskScreen(),
    completedTaskScreen(),
    cancelledTaskScreen(),
    progressTaskScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: TMAppBar(selectedIndex: _selectedIndex),
        body: _screens[_selectedIndex],

        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            _selectedIndex = index;
            setState(() {});
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.new_label_outlined),
              label: 'New Tasks',
            ),
            NavigationDestination(
              icon: Icon(Icons.done_outline),
              label: 'Completed',
            ),
            NavigationDestination(
              icon: Icon(Icons.cancel_outlined),
              label: 'Cancelled',
            ),
            NavigationDestination(
              icon: Icon(Icons.pending_actions_outlined),
              label: 'Progress',
            ),
          ],
        ),
      ),
    );
  }
}
