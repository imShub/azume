import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentorup_app/Screens/Blogs/blogs.dart';

class ArticlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 50, top: 15),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BlogsMainPage();
                        },
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 200.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  //let's add the height
                  image: DecorationImage(
                      image: AssetImage('assets/images/meeting.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                'Start-ups and Their Relevance in the Cloud Computing Era',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.person),
                  Text('Ankit Sharma'),
                  SizedBox(
                    width: 30.0,
                  ),
                  Icon(Icons.date_range),
                  Text('March 18 2020'),
                  SizedBox(
                    width: 35.0,
                  ),
                  Icon(Icons.favorite),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                child: Text(
                  'It’s no surprise that cloud computing services are widely adopted among start-ups. The benefits that it provides, such as the option to pay-as-you-go, ability to scale, zero Capex, and self-serviceability, permits them to focus on what they do best: deliver innovative solutions to their customers.This also explains why most enterprise start-ups offer their services over the cloud. Be it something as critical as cybersecurity or essential as a virtual desktop, cloud and cloud-based services are the need of the hour. A proof of concept (PoC) environment can now be spun-off in a matter of minutes and go/no-go decisions can be taken swiftly. Proov, an Israeli start-up in this space, provides an external, data-rich and secure cloud testing environment to enterprises.All one needs to do is submit a request on the portal, which is broadcast to registered start-ups in that domain. Once a vendor is finalized, an environment is quickly commissioned and PoC initiated. What’s more, an enterprise can run multiple PoCs at any time without worrying about botched integrations and implementations.The recent IPO success of cloud based start-ups such as Twilio and Alteryx reflects market acceptance. Today, enterprises are not averse to consuming start-up services. In fact, while talking to a global Consumer Packaged Goods customer about a cybersecurity start-up, I was surprised to find the solution already deployed in their live environment. This quashed the whole notion of a start-up not being able to deliver at scale or sustain Fortune 500 customers. It’s evident that these innovative start-ups are here for the long haul.',
                  style: TextStyle(
                    fontSize: 20.0,
                    wordSpacing: 0,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
