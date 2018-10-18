send_todo_list:
  cron: "* * */7 * *"
  class: "TodoListJob"
queue: default