import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Dashboard()));
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                      color: Color(0xFF1CC2CD)), // Changed border color
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                      color: Color(0xFF1CC2CD)), // Changed border color
                ),
                contentPadding: EdgeInsets.symmetric(
                    vertical: 12.0,
                    horizontal: 16.0), // Adjusted content padding
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildBubbleSquare(
                        color: Color(0xFF1CC2CD),
                        icon: Icons.send,
                        title: 'Laporan Terkirim',
                      ),
                      _buildBubbleSquare(
                        color: Color(0xFF1CC2CD),
                        icon: Icons.timer,
                        title: 'Dalam Penanganan',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildBubbleSquare(
                        color: Color(0xFF1CC2CD),
                        icon: Icons.assignment_turned_in,
                        title: 'Telah Diperbaiki',
                      ),
                      _buildBubbleSquare(
                        color: Color(0xFF1CC2CD),
                        icon: Icons.thumb_up_sharp,
                        title: 'Beri Penilaian',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBubbleSquare({
    required Color color,
    required IconData icon,
    required String title,
  }) {
    return Container(
      width: 120,
      height: 120,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 10,
            right: 10,
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
