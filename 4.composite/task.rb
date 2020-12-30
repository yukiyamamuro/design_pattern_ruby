class Task
  attr_reader :name

  def initialize(name)
    @name = name
    puts name
  end

  def get_time_required
    0.0
  end
end