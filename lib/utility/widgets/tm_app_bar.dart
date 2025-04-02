import 'package:flutter/material.dart';
import 'package:task_manager_new/screen/onboarding/loginScreen.dart';
import 'package:task_manager_new/style/style.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  const TMAppBar({super.key, required int selectedIndex})
    : _selectedIndex = selectedIndex;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.colorGreen,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.colorWhite,
            radius: 20,
            foregroundImage: NetworkImage(
              "https://scontent.fjsr11-1.fna.fbcdn.net/v/t39.30808-6/428628058_7423518701075010_2861791873850197502_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeF49C7DO4TWzofFJz4xEGt_8PRqxfB_0Ezw9GrF8H_QTOVXrPJHkrdYnjyB8hI2VGAm5TO9N28TmXUY2kZCnmPy&_nc_ohc=Kyi01zLysl8Q7kNvgFGj6yI&_nc_oc=AdlxMOP8TV8-lMdmLZ-Q35Ous_67YvTZ9hVU8BnUm1OsEsASLAthhBodelOoD-jukEg&_nc_zt=23&_nc_ht=scontent.fjsr11-1.fna&_nc_gid=f2vpPp0ONhS32ExkDMzuiw&oh=00_AYF2U-V9tgKJGR_mBiDnJLUXEWpOlVgx1qYBlYX0t0X7WQ&oe=67F08E86",
            ),
          ),
          const SizedBox(width: 8), // Add spacing between avatar and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Promit Arjan",
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  // Prevent overflow
                ),
                Text(
                  "arjan@email.com",
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 11,
                  ),
                  // Prevent overflow
                ),
              ],
            ),
          ),
          if (_selectedIndex == 0) ...[
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const loginScreen()),
                  (route) => false,
                );
              },
              color: AppColors.colorWhite,
            ),
          ],
        ],
      ),
    );
  }
}
