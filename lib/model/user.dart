class User {
  String name;
  String phone;
  String email;
  String password;

  User({
    required this.name,
    required this.phone,
    required this.email,
    required this.password,
  });
}

var listUser = <User>[
  User(
    name: 'user a',
    phone: '08123456789',
    email: 'usera@gmail.com',
    password: 'password',
  ),
  User(
    name: 'user b',
    phone: '08123456789',
    email: 'userb@gmail.com',
    password: 'password',
  )
];
