import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w900, color: Colors.black),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Manuel B. Gracia  ',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          'Professional Teacher',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black26,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.black26),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Components(title: '35g', title2: 'Protien'),
                      Components(title: '25g', title2: 'Carbs'),
                      Components(title: '19g', title2: 'Fat')
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Components(
                      title: 'Daily Calories', title2: '1800-2000 Kal'),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text('EDIT'),
                      )),
                ],
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Components(
                  title: 'Macronutrient Distribution',
                  title2: 'Protien (40%) Carbs (35%) Fat (25%)'),
              SizedBox(
                height: size.height * 0.04,
              ),
              const Components(
                  title: 'My Collection',
                  title2: 'Already collected 40 recipes'),
              SizedBox(
                height: size.height * 0.04,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Favorite Meals',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  const Text(
                    '45 meals saved on favorites',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black26,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Row(
                    children: [
                      const Food(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYgv_7WcHGDMSb2j_ZbjdqXWr9s0UEumDMag&usqp=CAU',
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Food(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvxAJcSQRs2u2vkyS5GoKLm66Op0CqWt0rjg&usqp=CAU',
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      const Food(
                        url:
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP68GaMxj6iSn18pYEVZyW0lLLYgbEzbdmFQ&usqp=CAU',
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        color: Colors.orange,
                        child: const Center(
                            child: Text(
                          '42',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

class Components extends StatelessWidget {
  final String title;
  final String title2;

  const Components({
    Key? key,
    required this.title,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              title2,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black26),
            ),
          ],
        ),
      ],
    );
  }
}

class Food extends StatelessWidget {
  final String url;

  const Food({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover)),
    );
  }
}
