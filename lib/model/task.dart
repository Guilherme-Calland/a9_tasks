class Task{
  int id;
  String name;
  Task(this.name);
  taskToMap(){
    Map<String, dynamic> data = {
      'name' : name
    };
    if(id!=null){
      data['id'] = id;
    }
    return data;
  }
}