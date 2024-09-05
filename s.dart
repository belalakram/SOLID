//Single responsibility principle

// Problem
class User {
  int id = 0;
  String name = " ";

  void save() {
    // save user to database
  }

  void sendEmail() {
    // send email to user
  }
}

//Soluion
// هنخلي behaviour اللي جوا كلاس كل واحد لواحده
//ده بيفدني لما يطلعلي error اقدر احله
class User {
  int id = 0;
  String name = " ";
}

class UserRepository {
  void save(User user) {
    // save user to database
  }
}

class EmailService {
  void sendEmail(User user) {
    // send email to user
  }
}