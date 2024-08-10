import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer(this.onTap, {super.key});
  final Future<void> Function(String identifier) onTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  clipBehavior: Clip.hardEdge,
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D5603AQFSKbtt_bGVmg/profile-displayphoto-shrink_800_800/0/1694080561594?e=1726704000&v=beta&t=BRzf3MFwkWfa5IRGUsmXYYF1cqGdSQsscwr7oH0ZPoQ",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Smirthika Shri"),
                const Text(
                  "smirthikashrip15@gmail.com",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(162, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.lunch_dining),
            title: const Text("Meals"),
            onTap: () {
              onTap("Meal");
            },
          ),
          ListTile(
              leading: const Icon(Icons.filter_alt_outlined),
              title: const Text("Filters"),
              onTap: () {
                onTap("Filter");
              }),
          const Spacer(),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text("About"),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text("About"),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Application Name: Bliss Bites"),
                        const Text("Version: 1.0"),
                        const SizedBox(
                          height: 200,
                        ),
                        Text(
                          "© Roheeth Dhanasekaran",
                          style: GoogleFonts.reenieBeanie(
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}
