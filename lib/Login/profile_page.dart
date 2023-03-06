import 'package:flutter/material.dart';

// This class handles the Page to dispaly the user's info on the "Edit Profile" Screen
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width;
    var height = screenSize.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              child: Image.asset("assets/image/imgtop.PNG"),
            ),
            SizedBox(
              width: width,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: width * 0.25,
                    child:  ClipRRect(borderRadius: BorderRadius.circular(80),
                    child: Image.asset(
                      'assets/image/profile.jpg',
                      width: 60.0,
                      height: 90.0,fit: BoxFit.fill,
                    ),
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: width * 0.65,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text("User Name",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                            const SizedBox(width: 10),
                            Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 246, 6, 86),
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 5.0, right: 5),
                                  child: Text("Pro",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10)),
                                )),
                            const SizedBox(width: 50),
                            const Card(
                                color: Color.fromARGB(255, 246, 6, 86),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 3.0, right: 3),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                        size: 12,
                                      ),
                                      Text("Edit",
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 12)),
                                    ],
                                  ),
                                ))
                          ],
                        ),
                        const Text("Structural Engineer",
                            style: TextStyle(color: Colors.grey, fontSize: 12)),
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.person_2_outlined,
                                color: Colors.grey, size: 15),
                            Text(
                              "Carpenter  ",
                              style: TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Icon(Icons.location_on_outlined,
                                color: Colors.grey, size: 15),
                            Text("Delhi  ",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12)),
                            // Icon(Icons.calendar_month_outlined,
                            //     color: Colors.grey, size: 15),
                            // Text("15 years",
                            //     style:
                            //         TextStyle(color: Colors.grey, fontSize: 12))
                          ],
                        ),
                        const Text("Get Reviews  >",
                            style: TextStyle(
                                color: Color.fromARGB(255, 246, 6, 86),
                                fontSize: 12)),
                      ],
                    ),
                  ),
                )
              ]),
            ),
            const Divider(),
            TabBar(
              // indicatorSize: TabBarIndicatorSize.tab,
              labelColor: const Color.fromARGB(255, 246, 6, 86),
              unselectedLabelColor: Colors.black,
              // indicatorWeight: 1,
              labelPadding: const EdgeInsets.all(0),
              tabs: const [
                Tab(
                  icon: Text(
                    "ACCOUNT",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                  ),
                ),
                // Tab(icon: Text("ChatList")),
                Tab(
                    icon: Text(
                  "CONTACT",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                )),
                Tab(
                    icon: Text(
                  "PROJECTS",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                )),
                Tab(
                    icon: Text(
                  "MESSAGES",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
                )),
              ],
              controller: _tabController,
            ),
            SingleChildScrollView(
              child: Container(
                color: Colors.grey[100],
                width: width * 0.95,
                height: 1000,
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    account(context),
                    Contact(context),
                    Contact(context),
                    Contact(context)
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  Widget account(context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.9,
      child: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text("Account Information",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          ),
          Text("User Name", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "Lorum Capsum", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("Email", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "LorumCapsum@gmail.com",
                hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text("Public Business Information",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
          ),
          Text("Profesional/Company Name", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "Lorum Capsum", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("Category", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "LorumCapsum@gmail.com",
                hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("website", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "LorumCapsum.com",
                hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("First Name", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "Lorum Capsum", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("Last name", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "Lorum", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("Business Registration", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "LorumCapsumcom", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("Business Description", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "LorumCapsumcom", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
          Text("Affiliations", style: TextStyle(fontSize: 12)),
          TextField(
            decoration: InputDecoration(
                hintText: "LorumCapcom", hintStyle: TextStyle(fontSize: 12)),
            style: TextStyle(
              decorationThickness: 0,
              color: Colors.black54,
            ),
          ),
          SizedBox(height: 10),
        ]),
      ),
    );
  }
}

Widget Contact(context) {
  return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 0.9,
      child: const Padding(
          padding: EdgeInsets.only(top: 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Text("Contact Information",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
            ),
            Text("Address Line 1", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "Lorum Capsum", hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 10),
            Text("Address Line 2", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "LorumCapsum@gmail.com",
                  hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text("City", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "LorumCapsum@gmail.com",
                  hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text("Country", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "LorumCapsum@gmail.com",
                  hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text("PIN Code", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "LorumCapsum@gmail.com",
                  hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text("Phone Line 1", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "LorumCapsum@gmail.com",
                  hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
            Text("Phone Line 2", style: TextStyle(fontSize: 12)),
            TextField(
              decoration: InputDecoration(
                  hintText: "LorumCapsum@gmail.com",
                  hintStyle: TextStyle(fontSize: 12)),
              style: TextStyle(
                decorationThickness: 0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 20),
          ])));
}
