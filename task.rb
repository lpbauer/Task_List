class TaskList

  def initialize
    @container = []
  end

  def container
    @container
  end

  def add_tasks_to_tasklist(task)
    @container << task
  end

  def include_completed_tasks
    @container.select {|t| t.task_done == true}
  end

  def include_not_completed_tasks
    @container.select {|t| t.task_done == false}
  end

end
# Story: As a developer, I can create a Task.
class Task < TaskList
  # these arguments are required whenever a new Task is made
  # Story: As a developer, I can give a Task a title and retrieve it.
  def initialize(title,description)
    @title = title
    @description = description
    @task_done = false
  end

  def title
    @title
  end

  def description
    @description
  end

  def task_done?
    # @description = "#{@description}: completed"
    if @task_done == false
      @task_done = true
    end
  end

  def task_done
    @task_done
  end

  def to_s
    "Title: #{@title} Description: #{@description} Task Done?: #{@task_done}"
  end

end

# Epic: Due Date
#
# Story: As a developer, I can create a DueDateTask, which is-a Task that has-a due date.
# Hint: Use the built-in Ruby Date class
#
# Story: As a developer, I can print an item with a due date with labels and values.
# Hint: When implementing to_s, use super to call to_s on the super class.
#
# Story: As a developer, I can add items with due dates to my TaskList.
# Hint: Consider keeping items with due dates separate from the other items.
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can list all the not completed items in order of due date, and then the items without due dates.

class DueDateTask < Task
  def initialize(due_date)
    super
    @date = due_date
  end

  def to_s
    super + "Due date: #{@date}"
  end

  # def add_date_to_tasks
  #
  # end
end
# Story: As a developer, I can give a Task a description and retrieve it.
#
# Story: As a developer, I can mark a Task done.
#
# Story: As a developer, when I print a Task that is done, its status is shown.
# Hint: Implement to_s have it return the features of a Task with labels (for instance, "Title: Buy Food Description: Bananas, milk").
#
# Story: As a developer, I can add all of my Tasks to a TaskList.
# Hint: A TaskList has-many Tasks
#
# Story: As a developer with a TaskList, I can get the completed items.
#
# Story: As a developer with a TaskList, I can get the incomplete items.
