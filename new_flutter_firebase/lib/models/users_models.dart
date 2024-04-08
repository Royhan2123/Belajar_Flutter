class UserModels {
  final int? id;
  final String? name;
  final String? email;
  final String? userName;
  final int? verified;
  final String? profilePicture;
  final String? cardNumber;
  final int? balance;
  final String? pin;
  final String? password;
  final String? token;

  const UserModels({
    this.id,
    this.name,
    this.email,
    this.userName,
    this.verified,
    this.profilePicture,
    this.cardNumber,
    this.balance,
    this.pin,
    this.password,
    this.token,
  });

  factory UserModels.fromJson(Map<String, dynamic> json) => UserModels(
        name: json["name"],
        id: json["id"],
        email: json["email"],
        userName: json["username"],
        verified: json["verified"],
        profilePicture: json["profile_picture"],
        pin: json["pin"],
        balance: json["balance"],
        cardNumber: json["card_number"],
        token: json["token"],
        password: json["password"],
      );

  UserModels copyWith({
    String? name,
    String? userName,
    String? email,
    String? pin,
    String? password,
    int? balance,
  }) =>
      UserModels(
          id: id,
          balance: balance ?? this.balance,
          password: password ?? this.password,
          name: name ?? this.name,
          pin: pin ?? this.pin,
          email: email ?? this.email,
          userName: userName ?? this.userName,
          cardNumber: cardNumber,
          profilePicture: profilePicture,
          token: token,
          verified: verified);
}
