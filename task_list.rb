require_relative 'task'
require_relative 'DueDateTask'

class TaskList
# initialize by creating an empty array for tasks later
  def initialize
    @container = []
  end
# getter for contents of the container
  def container
    @container
  end
# shoveling tasks into our empty container array
  def add_tasks_to_tasklist(task)
    @container << task
  end
# if tasks are completed select and print only completed tasks
  def include_completed_tasks
    @container.select {|t| t.task_done == true}
  end
# if tasks are not completed select and print only uncompleted tasks
  def include_not_completed_tasks
    @container.select {|t| t.task_done == false}
  end

end

  
