import 'package:netsecurityapp/config/app_api.dart';
import 'package:netsecurityapp/net/base_server.dart';
import 'package:netsecurityapp/pages/studycenter/data/type_list.dart';

class StudyCenterServer extends ServiceBase<List<TypeListModel>> {
  @override
  Future<List<TypeListModel>> call() async {
    final databody = {"keyword": "", "page": 1, "pageSize": 15};
    final result = await basepost(databody, Api.studycenterList);
    print(result);
    return List.generate(result['data']['list'].length,
        (index) => TypeListModel.JsonFrom(result['data']['list'][index]));
  }
}
