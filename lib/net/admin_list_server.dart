import 'package:netsecurityapp/config/app_api.dart';
import 'package:netsecurityapp/data/model/manager_model.dart';
import 'package:netsecurityapp/net/base_server.dart';

class AdminListServer extends ServiceBase<List<ManagerACount>> {
  @override
  Future<List<ManagerACount>> call() async {
    final databody = {"keyword": "", "page": 1, "pageSize": 15};
    final result = await basepost(databody, Api.adminlistUrl);
    print(result);
    return List.generate(result['data']['list'].length,
        (index) => ManagerACount.JsonFrom(result['data']['list'][index]));
  }
}
