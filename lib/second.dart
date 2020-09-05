import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    var images=["https://5.imimg.com/data5/QS/TF/MY-39133330/jasmine-grandiflorum-500x500.jpg",
      "https://www.thefactsite.com/wp-content/uploads/2018/06/tulip-facts.jpg",
      "https://www.greekorchids.gr/wp-content/uploads/2020/05/purple-moth-orchids-shutterstock_468919835-1200x800-1-930x620.jpg",
    "https://www.thespruce.com/thmb/_nEiTG7A-qgAmKRo_sz9dmHe1gI=/2304x2304/smart/filters:no_upscale()/Dahlia-GettyImages-586928245-58db11cb3df78c516244e50a.jpg",
    "https://www.gardeningknowhow.com/wp-content/uploads/2017/08/dandelion-seed-head.jpg",
    "https://img.freepik.com/free-photo/poppy-flowers-summer_8353-9431.jpg?size=626&ext=jpg",
    "https://www.ikea.com/bh/en/images/products/smycka-artificial-flower__0902935_PE596772_S5.JPG?f=s",
    "https://gilmour.com/wp-content/uploads/2018/03/growing-sunflowers.jpg",
    "https://www.flowerglossary.com/wp-content/uploads/2019/12/lotus-flower-on-water.png",
    "https://images.squarespace-cdn.com/content/v1/5a38097ae5dd5b6cf4e2e6d3/1578178733156-LBXHJ09C30ECZKOXREYZ/ke17ZwdGBToddI8pDm48kJL6256osWxv4OnWBjXpUb9Zw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZamWLI2zvYWH8K3-s_4yszcp2ryTI0HqTOaaUohrI8PIm5G77D6woVjbVL2NL4tBE0WZ3uZ6Mt31DXF8g4IDZyU/Forgetmenots.png"];
    var names=["Jasmine","Tulip","Orchid","Dahlia","Dandelion", "Poppy","Rose","Sunflowers","Lotus","Forget Me Not"];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffffd89b),Color(0xff19547b)]),
          ),
        ),
      ),

      body: GridView.builder(
        itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2),
          itemBuilder: (context,index){
return Card(
  child: Column(
    children: [
      Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image:DecorationImage(image: NetworkImage(images[index]))
        ),
      ),
      Container(
          height: 20,
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffffd89b),Color(0xff19547b)])
          ),
          child: Center(child: Text(names[index])))
    ],
  ),
);
          }),
      )
    );
  }
}
