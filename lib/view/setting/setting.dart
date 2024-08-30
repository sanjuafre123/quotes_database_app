import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Colors.deepPurple.shade700,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.deepPurple.shade700,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.brown,
                  child: Text(
                    "A",
                    style: GoogleFonts.lato(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Afre Sanju",
                  style: GoogleFonts.lato(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  margin: EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Text(
                      'Switch theme',
                      style: GoogleFonts.lato(fontSize: 16),
                    ),
                    trailing: Switch(value: true, onChanged: (val) {}),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Text(
                      'Logout',
                      style: GoogleFonts.lato(fontSize: 16),
                    ),
                    trailing: Icon(Icons.logout, color: Colors.orange),
                  ),
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.description,
                  text: 'Licenses',
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.lock,
                  text: 'Privacy policy',
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.rate_review,
                  text: 'Rate App',
                  subText: 'Play Store',
                  iconBackgroundColor: Colors.deepPurple,
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.email,
                  text: 'Write to me',
                  subText: 'appsnexte@gmail.com',
                  iconBackgroundColor: Colors.orange,
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.image,
                  text: 'Unsplash',
                  subText: 'Image provider',
                ),
                _buildSettingsOption(
                  context,
                  icon: Icons.format_quote,
                  text: 'Zen Quotes',
                  subText: 'Quotes provider',
                  iconBackgroundColor: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsOption(
      BuildContext context, {
        required IconData icon,
        required String text,
        String? subText,
        Color iconBackgroundColor = Colors.orange,
      }) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
            leading: CircleAvatar(
              backgroundColor: iconBackgroundColor,
              child: Icon(icon, color: Colors.white),
            ),
            title: Text(
              text,
              style: GoogleFonts.lato(fontSize: 16),
            ),
            subtitle: subText != null
                ? Text(
              subText,
              style: GoogleFonts.lato(),
            )
                : null,
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.orange),
        ),
        );
    }
}