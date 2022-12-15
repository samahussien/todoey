import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/task_data.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController textEditingController=TextEditingController();
 late String  newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff757575),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              TextField(
                controller: textEditingController,
                autofocus: true,
            onChanged: (value){
                  newTaskTitle=value;
            },
            textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10,),
              MaterialButton(
                onPressed: () {

//  instead of 'Provider.of<TaskData>(context).addTask(newTaskTitle)
//   use context.read<TaskData>().addTask(newTaskTitle); to access a function
//  due to the new version of provider
context.read<TaskData>().addTask(newTaskTitle);
                   Navigator.pop(context);


                },
                color: Colors.lightBlueAccent,
                child: const Text('add',style: TextStyle(color: Colors.white),),
              )
            ],
          ),
        ));
  }
}
