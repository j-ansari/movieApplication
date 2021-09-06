import 'package:flutter/material.dart';
import 'package:movie_application/provider/buy_account_provider.dart';
import 'package:movie_application/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late BuyAccountProvider buyAccountProvider;
  SharedPreferences? pref;

  Future initPref() async {
    if (pref == null) {
      pref = await SharedPreferences.getInstance();
    }
  }

  @override
  void initState() {
    super.initState();
    buyAccountProvider =
        Provider.of<BuyAccountProvider>(context, listen: false);
    buyAccountProvider.fetchBuyAccountData();
    initPref();
  }

  @override
  void dispose() {
    if(buyAccountProvider.buyAccountModel.isEmpty){
      buyAccountProvider.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff211421),
        title: Text('your Profile Information'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            width: size.width,
            height: size.height * 0.11,
            color: Colors.grey[900],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('you are login by username:  ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(UserDataPreferences.getUserName().toString(),
                      style: TextStyle(color: Colors.amber, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text('your email login is:  ',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(UserDataPreferences.getEmail().toString(),
                      style: TextStyle(color: Colors.amber, fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.05),
          doneText(Icons.done_all, 'you can watch every thing !!!'),
          doneText(Icons.done_all, 'you can download all movie and series'),
          doneText(Icons.done_all, 'update always !!!'),
          SizedBox(height: size.height * 0.05),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('you can buy the accounts : ',
              style: TextStyle(color: Colors.amber),
            ),
          ),
          Expanded(
            child: Consumer<BuyAccountProvider>(
              builder: (context, data, _) {
                //SharedPreferences? pref;
                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                  scrollDirection: Axis.vertical,
                  itemCount: data.buyAccountModel.length,
                  itemBuilder: (context, position) {
                    return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(data.buyAccountModel[position].month,
                                  style: TextStyle(color: Colors.white),),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if(pref!.getInt('shopped') != position) {
                                        pref!.setInt('shopped', position);
                                      } else {
                                        pref!.remove('shopped');
                                      }
                                    });
                                    print(pref!.getInt('shopped'));
                                  },
                                  child: Icon(pref != null &&
                                    pref!.getInt('shopped') == position
                                      ? Icons.done : Icons.add,
                                    color: pref != null &&
                                        pref!.getInt('shopped') == position
                                        ? Colors.green : Colors.red,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 25),
                            Divider(color: Colors.amber, thickness: 1,),
                            SizedBox(height: 25),
                            Text(data.buyAccountModel[position].price,
                              style: TextStyle(color: Colors.white),),
                          ],
                        ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.only(bottom: 20),
        child: FloatingActionButton.extended(
          onPressed: () {},
          label: Text('Account Setting', style: TextStyle(color: Colors.black)),
          icon: Icon(Icons.person_pin, color: Colors.black,),
          backgroundColor: Colors.amber,
        ),
      ),
    );
  }

  Widget doneText(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.amber,),
          SizedBox(width: 10),
          Text(text, style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}