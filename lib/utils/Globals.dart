library betafitness.globals;

import 'package:betafitness/core.dart';

   var user;
   var name = "";
   var username = "";
   var phone = " ";
   var email = "";

   void fetchInfo() {
    Users().getUser().then((value) => {
          user = value,
      name = value.name,
      username = value.username,
      phone = value.phone,
      email = value.email
        });

}
