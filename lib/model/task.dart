class Task{
  int id;
  String name;
  Task(this.name);

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