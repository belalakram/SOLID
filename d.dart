//Dependency Inversion Principle - DIP


class UserRepository {
  void save(User user) {
    // save user to database
  }
}

class UserService {
  UserRepository userRepository;

  UserService(this.userRepository);

  void saveUser(User user) {
    userRepository.save(user);
  }
}

//solution


// واجهة تمثل مستودع المستخدمين
abstract class UserRepository {
  void save(User user); // دالة لحفظ المستخدم
}

// تنفيذ لمستودع المستخدمين باستخدام Firebase
class FirebaseUserRepository implements UserRepository {
  @override
  void save(User user) {
    // كود لحفظ المستخدم في Firebase
  }
}

// خدمة المستخدم اللي بتعتمد على واجهة UserRepository
class UserService {
  UserRepository userRepository; // متغير لتخزين مرجع لمستودع المستخدمين

  // مُنشئ الخدمة بياخد مستودع المستخدمين كوسيط
  UserService(this.userRepository);

  // دالة لحفظ المستخدم باستخدام المستودع
  void saveUser(User user) {
    userRepository.save(user); // استدعاء دالة الحفظ من المستودع
  }
}