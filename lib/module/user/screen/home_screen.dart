import 'package:sample_flutter/core/export.dart';
import 'package:sample_flutter/module/user/controller/home_controller.dart';
import 'package:sample_flutter/module/user/widget/home_widget.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserHomeController>(
          init: UserHomeController(),
          builder: (ctrl) {
            return ctrl.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          color: primaryColor,
                          child: SafeArea(
                            child: UserDashboardProfileDetailWidget(
                              name: 'Zul',
                              balance: '2,000',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const HeightPrimarySpacer(),
                              Container(
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: PrimaryButton(
                                          title: 'Send Money',
                                          onPressed: () {}),
                                    ),
                                    const WidthPrimarySpacer(),
                                    Expanded(
                                      child: PrimaryButton(
                                          title: 'Request  Money',
                                          onPressed: () {}),
                                    ),
                                  ],
                                ),
                              ),
                              const HeightPrimarySpacer(),
                              Container(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Last Transaction',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                    Text(
                                      'View All',
                                      style: TextStyle(
                                          fontSize: 12, color: primaryColor),
                                    ),
                                  ],
                                ),
                              ),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const ScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    // leading icon for each list
                                    leading: const Icon(Icons.money),

                                    title: Text('Transaction $index'),
                                    subtitle: const Text('oct 12, 2021'),
                                    trailing: const Text(
                                      'RM 100.00',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
          }),
    );
  }
}
