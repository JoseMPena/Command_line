class Task
  attr_reader :content, :id, :completed, :created_at, :updated_at

  #@@ marks a class variable which is unique over all instances of this class
  @@current_id = 0

  def initialize(content, complete = false)
    @content = content
    create_new
    @completed = complete
    @created_at = DateTime.now
    @updated_at = nil
  end

  def create_new
    @@current_id += 1
    @id = @@current_id
  end

  def complete?
    @completed
  end

  def toggle_complete!
    @completed = @completed ? false : true
  end

  def update_content!(new_content)
    @content = new_content
  end

  def to_s
    @content
  end
end
