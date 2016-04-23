class Task
  attr_reader :content, :id, :completed

  #@@ marks a class variable which is unique over all instances of this class
  @@current_id = 0

  def initialize(content, complete = false)
    @content = content
    create_new
    @completed = complete
  end

  def create_new
    @@current_id += 1
    @id = @@current_id
  end

  def complete?
    @completed
  end
end
