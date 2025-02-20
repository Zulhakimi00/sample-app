// ignore_for_file: must_be_immutable

import 'package:sample_flutter/core/export.dart';

class UserDashboardProfileDetailWidget extends StatelessWidget {
  String name;
  String balance;
  UserDashboardProfileDetailWidget({
    super.key,
    required this.name,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Dashboard',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
              ),
            ],
          ),
          HeightCustomerSpacer(size: 40),
          Text('Hi $name',
              style: const TextStyle(fontSize: 16, color: Colors.white)),
          const HeightSecondarySpacer(),
          const Text('Total Balance',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          const HeightSecondarySpacer(),
          Text('RM $balance',
              style: const TextStyle(fontSize: 28, color: Colors.white)),
        ],
      ),
    );
  }
}
