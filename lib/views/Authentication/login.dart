import 'package:flutter/material.dart';
import 'package:revision/constants/colors.dart';
import 'package:revision/constants/controllers.dart';
import 'package:revision/router/router_generator.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontFamily: 'Avenir', fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 12),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  'Login with Google',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontSize: 15),
                ),
                style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
            Divider(
              height: 15,
              thickness: 0.3,
              indent: size.width * 0.05,
              endIndent: size.width * 0.05,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Email'),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade200)),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'email@mail.com',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Text('Password'),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade200)),
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'At least 8 characters',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (val) {}),
                Text('Remember me')
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 12),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => navigationController.getOffAll(dashboard),
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ),
            Divider(
              height: 15,
              thickness: 0.3,
              indent: size.width * 0.05,
              endIndent: size.width * 0.05,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Column(
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () => navigationController.getOffAll(signUp),
                  child: Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(color: orange),
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 15)
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }
}
