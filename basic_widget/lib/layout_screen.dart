import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  LayoutScreen({super.key});

  // Create variable
  final List<String> posts = [
    'assets/images/post1.png',
    'assets/images/post2.png',
    'assets/images/post3.png',
    'assets/images/post4.png',
    'assets/images/post5.png',
    'assets/images/post6.png',
    'assets/images/post7.png',
    'assets/images/post8.png',
    'assets/images/post9.png',
    'assets/images/post10.png',
    'assets/images/post11.png',
    'assets/images/post12.png',
  ];

  @override
  Widget build(BuildContext context) {
    final images = posts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Example'),
        leading: IconButton(
          icon: const Icon(Icons.exit_to_app, size: 50.0),
          onPressed: () {
            print('Menu pressed');
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // User Avatar
            const SizedBox(height: 20.0),
            Center(
              child: CircleAvatar(
                radius: 65.0,
                backgroundColor: const Color.fromARGB(255, 42, 27, 176),
                child: const CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
            ),

            // Full Name
            const SizedBox(height: 20.0),
            const Center(
              child: Text(
                'Thxnii',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // Address
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on, size: 30.0, color: Colors.blue),
                const SizedBox(width: 15.0),
                const Text(
                  '123 Main St, City, Country',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),

            // Posts Stats
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Posts
                const SizedBox(width: 30.0),
                Column(
                  children: [
                    const Text(
                      '36',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      'Posts',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),

                // Following
                const SizedBox(width: 30.0),
                Column(
                  children: [
                    const Text(
                      '12.5K',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      'Following',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),

                // Followers
                const SizedBox(width: 30.0),
                Column(
                  children: [
                    const Text(
                      '5k',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      'Followers',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),

            // Photo Gallery
            const SizedBox(height: 25.0),
            const Center(
              child: Text(
                'Photos',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10.0),

            // GridView for photos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20.0), // Bottom padding
          ],
        ),
      ),
    );
  }
}