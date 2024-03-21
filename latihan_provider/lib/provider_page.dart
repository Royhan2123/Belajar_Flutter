import 'package:flutter/material.dart';
import 'package:latihan_provider/done_modoule_provider.dart';
import 'package:provider/provider.dart';

class ModuleList extends StatefulWidget {
  const ModuleList({super.key});

  @override
  State<ModuleList> createState() => _ModuleListState();
}

class _ModuleListState extends State<ModuleList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _moduleList.length,
      itemBuilder: (context, index) {
        return Consumer<DoneModuleProvider>(
            builder: (context, DoneModuleProvider data, widget) {
              return ModuleTile(
                 moduleName: _moduleList[index],
              isDone: data.doneModuleList.contains(_moduleList[index]),
              onClick: () {
                data.complete(_moduleList[index]);
              },
              )
            });
      },
    );
  }
}
