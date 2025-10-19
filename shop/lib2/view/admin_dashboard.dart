import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Dashboard'),
        backgroundColor: const Color.fromARGB(255, 117, 150, 247),
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Get.offAllNamed('/loginu');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Admin!',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 156, 197),
              ),
            ),
            const SizedBox(height: 20),
          
            // Row(
            //   children: [
            //     Expanded(
            //       child: Card(
            //         elevation: 4,
            //         child: Padding(
            //           padding: const EdgeInsets.all(16),
            //           child: Column(
            //             children: [
            //               const Icon(
            //                 Icons.shopping_cart,
            //                 size: 40,
            //                 color: Color.fromARGB(255, 236, 156, 197),
            //               ),
            //               const SizedBox(height: 8),
            //               const Text(
            //                 'Total Orders',
            //                 style: TextStyle(fontSize: 14),
            //               ),
            //               const Text(
            //                 '156',
            //                 style: TextStyle(
            //                   fontSize: 24,
            //                   fontWeight: FontWeight.bold,
            //                   color: Color.fromARGB(255, 236, 156, 197),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //     const SizedBox(width: 16),
            //     Expanded(
            //       child: Card(
            //         elevation: 4,
            //         child: Padding(
            //           padding: const EdgeInsets.all(16),
            //           child: Column(
            //             children: [
            //               const Icon(
            //                 Icons.attach_money,
            //                 size: 40,
            //                 color:Color.fromARGB(255, 236, 156, 197),
            //               ),
            //               const SizedBox(height: 8),
            //               const Text(
            //                 'Revenue',
            //                 style: TextStyle(fontSize: 14),
            //               ),
            //               const Text(
            //                 '\$12,450',
            //                 style: TextStyle(
            //                   fontSize: 24,
            //                   fontWeight: FontWeight.bold,
            //                   color: Color(0xFFB8860B),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            
            const SizedBox(height: 20),
            
            
            const Text(
              'Quick Actions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.inventory, color:Color.fromARGB(255, 236, 156, 197)),
                title: const Text('Manage Products'),
                subtitle: const Text('Add, edit, or remove products'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.snackbar(
                    'Info',
                    'Product management feature coming soon!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: const Color.fromARGB(255, 236, 156, 197),
                    colorText: Colors.white,
                  );
                },
              ),
            ),
            
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.people, color: Color.fromARGB(255, 236, 156, 197)),
                title: const Text('Manage Users'),
                subtitle: const Text('View and manage customer accounts'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.snackbar(
                    'Info',
                    'User management feature coming soon!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor:Color.fromARGB(255, 236, 156, 197),
                    colorText: Colors.white,
                  );
                },
              ),
            ),
            
            Card(
              elevation: 4,
              child: ListTile(
                leading: const Icon(Icons.analytics, color:Color.fromARGB(255, 236, 156, 197)),
                title: const Text('View Analytics'),
                subtitle: const Text('Sales reports and statistics'),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Get.snackbar(
                    'Info',
                    'Analytics feature coming soon!',
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: const Color.fromARGB(255, 236, 156, 197),
                    colorText: Colors.white,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
