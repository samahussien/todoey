class Task{
  final String name;
  bool isDone;

  Task({required this.name, this.isDone = false});
  void toddleDone(){
    isDone=!isDone;
    print('is done $isDone');
  }

}