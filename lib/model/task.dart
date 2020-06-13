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

  Task.mapToTask(Map<String, dynamic> data){
    this.id = data['id'];
    this.name = data['name'];
  }
}