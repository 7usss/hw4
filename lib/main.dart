import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 90.0),
            const Text(
              "Start or Join a Meeting",
              style: TextStyle(
                fontSize: 26,
                color: Color.fromARGB(255, 14, 14, 14),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Image.asset("images/zoom1.png"),
            const SizedBox(height: 60.0),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) {
                          return p6_join_meeting();
                        })));
                      },
                      child: const Text(
                        "Join a Meeting",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return p2_sign_up();
                    }));
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.push(context, MaterialPageRoute(builder: ((context) {
                      return p5_sign_in();
                    })));
                  }),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.blue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class p2_sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                  labelText: "Confirm Password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(20.0)),
              child: const Center(
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('By sign up, i agree to The'),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return p3_Privacy();
                    }));
                  },
                  child: const Text(
                    'privacy policy',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                const Text('and'),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return p4_TermsPage();
                    }));
                  },
                  child: const Text('Tearms of services', style: TextStyle(color: Colors.blue)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class p3_Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Privacy Policy"),
        ),
        body: ListView(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "At Zoom, we take your privacy seriously. ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Information Collection:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "When you use our app, we may collect the following ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Information Use:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "We may use the information we collect for the following purposes",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Information Sharing:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "We will not share your personal information with any third party, ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Security:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "We take reasonable precautions to protect your personal .",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Changes to this Privacy Policy:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "We may update this privacy ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Contact Us:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "If you have any questions or concerns about our privacy policy, please contact us at zoomapp@support.com.",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ));
  }
}

class p4_TermsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Terms of Service"),
        ),
        body: ListView(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Welcome to our app! These terms of service Terms of Service govern your relationship with our app, website, and services operated by Zoom.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Accounts:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "When you create an account with us, you must provide us information",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Content:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Our Service allows you to post, link,.",
                style: TextStyle(fontSize: 18),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Links To Other Web Sites:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Our Service may contain links to third-party web ",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ));
  }
}

class p5_sign_in extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
            ),
            const SizedBox(height: 20.0),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
              obscureText: true,
            ),
            const SizedBox(height: 20.0),
            const SizedBox(height: 20.0),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(20.0)),
              child: const Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class p6_join_meeting extends StatefulWidget {
  @override
  _JoinMeetingPageState createState() => _JoinMeetingPageState();
}

class _JoinMeetingPageState extends State<p6_join_meeting> {
  final TextEditingController _meetingIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Join Zoom Meeting"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _meetingIdController,
                decoration: const InputDecoration(
                  labelText: "Meeting ID",
                ),
              ),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: "Password (optional)",
                ),
              ),
              const SizedBox(height: 16.0),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                    child: Text(
                  "Join Meeting",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
        ));
  }
}
