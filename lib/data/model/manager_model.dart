class ManagerACount {
  final String? adminName;
  final String? email;
  final String? account;
  final String? password;
  final String? headPortrait;
  final int? isAdmin;
  final int? status;
  final String? createdAt;
  final String? updatedAt;
  final String? deletedAt;
  final String? lastLoginAt;
  final String? lastLoginIp;

  ManagerACount(
      {required this.adminName,
      required this.email,
      required this.account,
      required this.password,
      required this.headPortrait,
      required this.isAdmin,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt,
      required this.lastLoginAt,
      required this.lastLoginIp});

  factory ManagerACount.JsonFrom(Map<String, dynamic> json) => ManagerACount(
      adminName: json['adminName'],
      email: json['email'],
      account: json['account'],
      password: json['password'],
      headPortrait: json['headPortrait'],
      isAdmin: json['isAdmin'],
      status: json['status'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      deletedAt: json['deletedAt'],
      lastLoginAt: json['lastLoginAt'],
      lastLoginIp: json['lastLoginIp']);
}
