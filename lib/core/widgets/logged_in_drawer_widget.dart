import 'package:echo_cash/core/constants/app_constants.dart';
import 'package:echo_cash/core/constants/app_globals.dart';
import 'package:echo_cash/core/widgets/CustomListTile.dart';
import 'package:flutter/material.dart';

class LoggedInCustomDrawer extends StatefulWidget {
  const LoggedInCustomDrawer({super.key});

  @override
  State<LoggedInCustomDrawer> createState() => _LoggedInCustomDrawerState();
}

class _LoggedInCustomDrawerState extends State<LoggedInCustomDrawer> {
  bool showSettings = false;

  bool switchNot = false;
  bool switchDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: const Center(
        child: Text('data'),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        child: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 5,
                color: secondaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Rima Dardar',
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: whiteColor),
                            ),
                            Image.asset(
                              'assets/images/verifiedIcon.png',
                              width: 20,
                              height: 20,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 25,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.white,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: secondaryColor,
                              ),
                              Text(
                                'Manager',
                                style: TextStyle(
                                    color: secondaryColor,
                                    fontFamily: 'Lato',
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                color: whiteColor,
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height / 1.25,
                ),
                child: Column(
                  children: [
                    if (!showSettings) ...[
                      CustomListTile(
                        leading: const Icon(
                          Icons.house,
                          size: 18,
                        ),
                        title: const Text(
                          'Home',
                          style: iconText,
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        leading: const Icon(
                          Icons.wallet_rounded,
                          size: 18,
                        ),
                        title: const Text(
                          'Wallets',
                          style: iconText,
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        leading: const Icon(
                          Icons.person,
                          size: 18,
                        ),
                        title: const Text(
                          'My profile',
                          style: iconText,
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        leading: const Icon(
                          Icons.lock_rounded,
                          size: 18,
                        ),
                        title: const Text(
                          'Change PIN',
                          style: iconText,
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        leading: const Icon(
                          Icons.notifications,
                          size: 18,
                        ),
                        title: const Text(
                          'Notifications',
                          style: iconText,
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        leading: const Icon(
                          Icons.settings,
                          size: 18,
                        ),
                        title: const Text(
                          'Settings',
                          style: iconText,
                        ),
                        onTap: () {
                          setState(() {
                            showSettings = true;
                          });
                        },
                        trailing: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ),
                    ] else ...[
                      CustomListTile(
                        leading: const Icon(
                          Icons.arrow_back_ios,
                          size: 18,
                        ),
                        title: const Text(
                          'Back',
                          style: iconText,
                        ),
                        onTap: () {
                          setState(() {
                            showSettings = false;
                          });
                        },
                      ),
                      CustomListTile(
                        title: const Text(
                          'Allow Notifications',
                          style: iconText,
                        ),
                        trailing: Transform.scale(
                          scale: 0.5,
                          child: Switch(
                            splashRadius: 100000,
                            value: switchNot,
                            activeColor: primaryColor,
                            inactiveTrackColor: whiteColor,
                            onChanged: (bool value) {
                              setState(() {
                                switchNot = value;
                              });
                            },
                          ),
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        title: const Text(
                          'Dark Mode',
                          style: iconText,
                        ),
                        trailing: Transform.scale(
                          scale: 0.5,
                          child: Switch(
                            splashRadius: 100000,
                            activeColor: primaryColor,
                            inactiveTrackColor: whiteColor,
                            value: switchDark,
                            onChanged: (bool value) {
                              setState(() {
                                switchDark = value;
                              });
                            },
                          ),
                        ),
                        onTap: () {},
                      ),
                      CustomListTile(
                        title: const Text(
                          'English',
                          style: iconText,
                        ),
                        trailing: const Icon(
                          Icons.arrow_drop_down,
                          size: 25,
                        ),
                        onTap: () {},
                      ),
                    ],
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomListTile(
                              leading: const Icon(
                                Icons.help_outlined,
                                size: 18,
                              ),
                              title: const Text(
                                'Help',
                                style: iconText,
                              ),
                              onTap: () {},
                            ),
                            CustomListTile(
                              leading: const Icon(
                                Icons.logout,
                                color: redColor,
                                size: 18,
                              ),
                              title: const Text(
                                'Logout',
                                style: TextStyle(
                                    color: redColor, fontFamily: 'Lato'),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
