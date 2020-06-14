class Task{
  int id;
  String name;
  Task(this.name);

  Task.mapToTask(Map< String, dynamic > data){
    this.id = data['id'];
    this.name = data['name'];
  }

  taskToMap(){
    Map<String, dynamic> data = {
      'name' : this.name
    };
    if(this.id != null){
      data['id'] = this.id;
    }
    return data;
  }

}