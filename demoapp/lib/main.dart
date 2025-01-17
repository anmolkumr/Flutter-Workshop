import 'package:flutter/material.dart';

void main() {
  runApp(const UserProfileApp());
}

class UserProfileApp extends StatelessWidget {
  const UserProfileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Anmol Kumar',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'kumaranmol@iitgn.ac.in',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text('Education'),
              subtitle: const Text(
                  'BTech in Mechanical Engineering, IIT Gandhinagar'),
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text('Role'),
              subtitle: const Text('LitSoc Club Secretary, IIT Gandhinagar'),
            ),
            ListTile(
              leading: const Icon(Icons.person_2_outlined),
              title: const Text('Hobbies'),
              subtitle: const Text('Poetry, Skit Writing, Reading'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add action here, e.g., edit profile
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Edit Profile button clicked!')),
                );
              },
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
