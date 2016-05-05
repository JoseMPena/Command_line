require 'yaml/store'

module StoreToYML
  # @todo_store = YAML::Store.new("./public/tasks.yml")
  FILE = './public/tasks.yml'.freeze

  def self.save(object)
    File.open(FILE, 'w') do |out| # To file
      YAML.dump(object, out)
    end
  end

  def self.load_tasks
    YAML.load_file(FILE)
  rescue Errno::ENOENT => error
    puts error.message
    []
  end
end
