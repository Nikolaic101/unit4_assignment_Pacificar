import 'package:flutter/material.dart';

void main() {
  runApp(Unit4Assignment());
}

class Unit4Assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'unit4_assignment_Pacificar',
      home: ProfileScreen(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jaden S. Pacificar'),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.teal.shade200, Colors.teal.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView( 
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Profile Section
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/Image/Profile.jpg'),  // Add your profile picture
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jaden S. Pacificar',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal.shade700,
                              ),
                            ),
                            Text(
                              'Janiuay, Iloilo, Philippines',
                              style: TextStyle(fontSize: 16, color: Colors.teal.shade600),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Divider(color: Colors.teal.shade300, thickness: 1),
                
                
                buildInfoCard(Icons.email, 'Email', 'jaden.pacificar@wvsu.edu.ph'),
                buildInfoCard(Icons.phone, 'Phone', '0928 993 0384'),
                buildInfoCard(Icons.location_city, 'Location', 'Janiuay, Iloilo, Philippines'),
                buildInfoCard(Icons.school, 'School', 'West Visayas State University - Main Campus'),

                SizedBox(height: 20),
                Divider(color: Colors.teal.shade300, thickness: 1),

                
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Biography',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal.shade700,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'I was born and raised in Janiuay, Iloilo, Philippines, a place that holds many special memories for me. '
                          'I’ve always enjoyed exploring different hobbies, but my favorite pastime is playing video games. '
                          'Whether it’s discovering new virtual worlds or challenging myself with strategic gameplay, I find it both fun and relaxing. '
                          'Video games also allow me to connect with friends and other gamers from around the world, turning what was once a solitary hobby into a social one. '
                          'Apart from gaming, I enjoy learning new skills and spending time with my family.',
                          style: TextStyle(fontSize: 16, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildInfoCard(IconData icon, String label, String data) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        leading: Icon(icon, size: 30, color: Colors.teal.shade700),
        title: Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal.shade700),
        ),
        subtitle: Text(data, style: TextStyle(fontSize: 16, color: Colors.black87)),
      ),
    );
  }
}
