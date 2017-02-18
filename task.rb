
# Story: As a developer, I can create a Task.
class Task
  # these arguments are required whenever a new Task is made
  # Story: As a developer, I can give a Task a title and retrieve it.
  # initialize Task to pass Title of task and description of task
  def initialize(title,description)
    @title = title
    @description = description
    @task_done = false
  end
  # getter for title of task
  def title
    @title
  end
  # getter for description of task
  def description
    @description
  end
  # setter for task being completed or not
  def task_done?
    # @description = "#{@description}: completed"
    if @task_done == false
      @task_done = true
      @date = "completed"
    else
      @task_done = false
    end
  end
  # getter for task complete status
  def task_done
    @task_done
  end
  # creating a string to list categories and their values for tasks
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
