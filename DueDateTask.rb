require_relative 'task'
require_relative 'task_list'

class DueDateTask < Task
  # initialize the due date of tasks with arguments
  def initialize(title,description,month,day,year)
    super(title,description)
    @month = month
    @day = day
    @year = year
    @date = ("#{@year}-#{@month}-#{@day}")
    @today = Date.today.to_s
    @container_for_due_today = []
    @container_for_not_due_today = []
  end
  # setter for duedate of task
  def duedate
    @date
  end
  # getter for date today
  def date_today?
    @today
  end
  # getter for is task due today?
  def due_today?
    @date == Date.today.to_s
  end

  def add_tasks_based_on_due_today(task)
    if task.due_today?
      @container_for_due_today << task
    else
      @container_for_not_due_today << task
    end
  end
  # def initialize(due_date)
  #   super
  #   @date = Date.new(due_date)
  # end
  # string for category and value of due date
  def to_s
    super + " Due date: #{@date}"
  end

  # def add_date_to_tasks
  #
  # end
end


#call rspec DueDateTask_rspec.rb
