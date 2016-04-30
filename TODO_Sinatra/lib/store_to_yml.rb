require 'yaml/store'

module StoreToYML
  @todo_store = YAML::Store.new("./public/tasks.yml")

  def self.save(object)
    File.open('./public/tasks.yml', 'w') do |out| # To file
      YAML.dump(object, out)
    end
    # @todo_store.transaction do
    #   @todo_store[user] = object
    # end
  end

  def self.load_tasks
    YAML.load_file('./public/tasks.yml')
  end
end
