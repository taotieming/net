class Api {
  //后台的地址
  static const baseurl = 'http://112.124.47.133:1111';
  //登录接口
  static const userloginUrl = '$baseurl/admin/login';
  //获取管理员账户接口
  static const adminlistUrl = '$baseurl/admin/admin/list';
  //获取管理员详情
  static const admindetailUrl = '$baseurl/admin/admin/detail';
  // 获取当前管理员信息
  static const admininfoUrl = '$baseurl/admin/admin/info';
  // 删除管理员
  static const deladminUrl = '$baseurl/admin/admin/del';
  // 修改管理员
  static const updateadminUrl = '$baseurl/admin/admin/update';
  // 添加管理员
  static const addadminUrl = '$baseurl/admin/admin/add';
}
