import 'package:flutter/material.dart';
import '../controllers/routes.dart';

class TosPage extends StatelessWidget {
  const TosPage({super.key});

  @override
  Widget build(BuildContext context) {
    Routes.tempContext=context;
    var size = MediaQuery.of(context).size;
    // var height = size.height;
    var width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: (width<400)?20:30/800*width, vertical: 10),
          child: Stack(
            children: [
               Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(child: Text("Terms of Services", style: TextStyle(color: Color(0xFF527EE7), fontWeight: FontWeight.bold, fontSize: 22, fontFamily: 'Poppins'),)),
              SizedBox(height: 20,),
              CommonText('PLEASE NOTE THAT YOUR USE OF AND ACCESS TO OUR SERVICES (DEFINED BELOW) ARE SUBJECT TO THE FOLLOWING TERMS; IF YOU DO NOT AGREE TO ALL OF THE FOLLOWING, YOU MAY NOT USE OR ACCESS THE SERVICES IN ANY MANNER.'),
              CommonText("Welcome to Toba App! Please read on to learn the rules and restrictions that govern your use of our services and applications (the “Services”). If you have any questions, comments, or concerns regarding these terms or the Services, please contact us at atikahap.yes@gmail.com."),
              CommonText('These Terms of Use (the “Terms”) are a binding contract between you and Toba App (“Toba App,” “we”, and “us”). You must agree to and accept all of the Terms, or you don’t have the right to use the Services. Your using the Services in any way means that you agree to all of these Terms, and these Terms will remain in effect while you use the Services. These Terms include the provisions in this document, as well as those in the Privacy Policy and Copyright Dispute Policy.'),
              Title1("Age Restriction"),
              CommonText("The Children's Online Privacy Protection Act (“COPPA”) requires that online service providers obtain parental consent before they knowingly collect personally identifiable information online from children who are under 13. We do not knowingly collect or solicit personally identifiable information from children under 13. If you are a child under 13, please do not attempt to register for the Services or send any personal information about yourself to us. If we learn we have collected personal information from a child under 13, we will delete that information as quickly as possible. If you believe that a child under 13 may have provided us personal information, please contact us at atikahap.yes@gmail.com."),
              Title1("What are the basics of using Toba App?"),
              CommonText("You may be required to sign up for an account, and select a password and username. You agree to provide us with accurate, complete, and up-to-date registration information about yourself. You may not select as your username a name that you don't have the right to use, or another person's name with the intent to impersonate that person. You may not transfer your account to anyone else without our prior written permission."),
              CommonText("You represent and warrant that you are an individual of legal age to form a binding contract, or if not, you’ve received your parent’s or guardian’s permission to use the Services and gotten your parent or guardian to agree to these Terms on your behalf."),
              CommonText("You will only use the Services for your own internal, personal, non-commercial use, and not on behalf of or for the benefit of any third party, and only in a manner that complies with all laws that apply to you. If your use of the Services is prohibited by applicable laws, then you aren’t authorized to use the Services. We can’t and won’t be responsible for your using the Services in a way that breaks the law."),
              CommonText("You will not share your account or password with anyone, and you must protect the security of your account and your password. You’re responsible for any activity associated with your account."),
              Title1("Your use of the Services is subject to the following additional restrictions:"),
              CommonText("Your use of the Services is subject to the following additional restrictions:"),
              CommonText("(a) Infringes or violates the intellectual property rights or any other rights of anyone else (including Toba App); (b) Violates any law or regulation, including any applicable export control laws; (c) Is harmful, fraudulent, deceptive, threatening, harassing, defamatory, obscene, or otherwise objectionable; (d) Jeopardizes the security of your Toba App account or anyone else’s (such as allowing someone else to log in to the Services as you); (e) Attempts, in any manner, to obtain the password, account, or other security information from any other user; (f) Violates the security of any computer network, or cracks any passwords or security encryption codes; (g) Runs Maillist, Listserv, any form of auto-responder or “spam” on the Services, or any processes that run or are activated while you are not logged into the Services, or that otherwise interfere with the proper working of the Services (including by placing an unreasonable load on the Services’ infrastructure); (h) “Crawls,” “scrapes,” or “spiders” any page, data, or portion of or relating to the Services or Content (through use of manual or automated means); (i) Copies or stores any significant portion of the Content; (j) Decompiles, reverse engineers, or otherwise attempts to obtain the source code or underlying ideas or information of or relating to the Services."),
              CommonText("A violation of any of the foregoing is grounds for termination of your right to use or access the Services."),
      
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(icon: Icon(Icons.close_rounded), onPressed: () {
              Routes.getBack();
            },),
          )
            ],
          )
      
        ),
      ),
    );
  }

  Padding CommonText(String text) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: SelectionArea(child: Text(text, style: TextStyle(fontFamily: 'Poppins', fontSize: 12), selectionColor: Color(0XFF1BC2D8),)),
          );
  }

  Text Title1(String text) => Text(text, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 17),);
}