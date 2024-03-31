import 'package:egme_investigation/screens/model/db_manager.dart';
import 'package:egme_investigation/screens/model/model_egma.dart';
import 'package:flutter/material.dart';

class EGME extends StatefulWidget {
  @override
  _EGMEPageState createState() => _EGMEPageState();
}

class _EGMEPageState extends State<EGME> {
  final DbManager dbManager = new DbManager();

  Model? model;
  List<Model>? modelList;
  TextEditingController nameTextController = TextEditingController();
  TextEditingController ageTextController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sqlite DB In Flutter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return DialogBox().dialog(
                  context: context,
                  onPressed: () async {
                    Model model = new Model(
                        personName: nameTextController.text,
                        age: ageTextController.text);
                    int? id = await dbManager.insertData(model);
                    print("data inserted  ${id}");
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      setState(() {
                        nameTextController.text = "";
                        ageTextController.text = "";
                      });
                      Navigator.of(context).pop();
                    });
                  },
                  textEditingController1: nameTextController,
                  textEditingController2: ageTextController,
                  /* nameTextFocusNode: nameTextFocusNode,
                  ageTextFocusNode: ageTextFocusNode,*/
                );
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: FutureBuilder(
        future: dbManager.getDataList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            modelList = snapshot.data as List<Model>?;
            return ListView.builder(
              itemCount: modelList?.length,
              itemBuilder: (context, index) {
                Model _model = modelList![index];
                return ItemCard(
                  model: _model,
                  nameTextController: nameTextController,
                  ageTextController: ageTextController,
                  onDeletePress: () {
                    dbManager.deleteData(_model);
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      setState(() {});
                    });
                  },
                  onEditPress: () {
                    nameTextController.text = _model.personName ?? "";
                    ageTextController.text = _model.age ?? "";
                    showDialog(
                        context: context,
                        builder: (context) {
                          return DialogBox().dialog(
                              context: context,
                              onPressed: () {
                                Model __model = Model(
                                    id: _model.id,
                                    personName: nameTextController.text,
                                    age: ageTextController.text);
                                dbManager.updateData(__model);
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  setState(() {
                                    nameTextController.text = "";
                                    ageTextController.text = "";
                                  });
                                });

                                Navigator.of(context).pop();
                              },
                              textEditingController2: ageTextController,
                              textEditingController1: nameTextController);
                        });
                  },
                );
              },
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class DialogBox {
  Widget dialog({
    BuildContext? context,
    Function? onPressed,
    TextEditingController? textEditingController1,
    TextEditingController? textEditingController2,
    /*FocusNode? nameTextFocusNode,
        FocusNode? ageTextFocusNode*/
  }) {
    return AlertDialog(
      title: Text("Enter person Data"),
      content: Container(
        height: 300,
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController1,
              keyboardType: TextInputType.text,
              // focusNode: nameTextFocusNode,
              decoration: InputDecoration(hintText: "Enter person name "),
              /*autofocus: true,*/
              onFieldSubmitted: (value) {
                //nameTextFocusNode?.unfocus();
                //FocusScope.of(context!).requestFocus(ageTextFocusNode);
              },
            ),
            TextFormField(
              controller: textEditingController2,
              keyboardType: TextInputType.number,
              //focusNode: ageTextFocusNode,
              decoration: InputDecoration(hintText: "enter person age"),
              onFieldSubmitted: (value) {
                //  ageTextFocusNode?.unfocus();
              },
            ),
            TextFormField(
              controller: textEditingController2,
              keyboardType: TextInputType.number,
              //focusNode: ageTextFocusNode,
              decoration: InputDecoration(hintText: "enter person age"),
              onFieldSubmitted: (value) {
                //  ageTextFocusNode?.unfocus();
              },
            ),
          ],
        ),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.of(context!).pop();
          },
          color: Colors.blue,
          child: Text(
            "Cancel",
          ),
        ),
        MaterialButton(
          onPressed: () {
            onPressed!();
          } /*onPressed!()*/,
          child: Text("Save"),
          color: Colors.blue,
        )
      ],
    );
  }
}

class ItemCard extends StatefulWidget {
  Model? model;
  TextEditingController? nameTextController;
  TextEditingController? ageTextController;
  Function? onDeletePress;
  Function? onEditPress;

  ItemCard(
      {this.model,
      this.nameTextController,
      this.ageTextController,
      this.onDeletePress,
      this.onEditPress});

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  final DbManager dbManager = new DbManager();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Name: ${widget.model?.personName}',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'age: ${widget.model?.age}',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        widget.onEditPress!();
                      },
                      icon: Icon(
                        Icons.edit,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      onPressed: () {
                        widget.onDeletePress!();
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
