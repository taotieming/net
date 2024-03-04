import 'package:flutter/material.dart';
import 'package:netsecurityapp/pages/studycenter/provider/study_center_provider.dart';
import 'package:provider/provider.dart';

class StudyCenterPage extends StatefulWidget {
  const StudyCenterPage({super.key});

  @override
  State<StudyCenterPage> createState() => _StudyCenterPageState();
}

class _StudyCenterPageState extends State<StudyCenterPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<StudyCenterProvider>().getAllTypeList('');
  }

  @override
  Widget build(BuildContext context) {
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(color: Colors.green);
    return Scaffold(
        appBar: AppBar(
          title: Text('学习中心'),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        body: Consumer(
          builder: (context, StudyCenterProvider value, child) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    final model = value.typeList[index];
                    return Text(model.typeName ?? '无');
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 24,
                    );
                  },
                  itemCount: value.typeList.length),
            );
          },
        ));
  }
}
