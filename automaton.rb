class Automaton
  attr_accessor :number_of_cells
  attr_accessor :number_of_generations
  attr_accessor :current_generation # Array for the current_generation
  attr_accessor :next_generation    # Array for the next generation

  def initialize(number_of_cells, number_of_generations)
    @number_of_cells       = number_of_cells
    @number_of_generations = number_of_generations
    generate_first
  end

  def run
    print_current
    number_of_generations.times do
      generate_next
      print_current
    end
  end

  def self.print_help
    puts "You need to give the number of cells and the number of generations to print (besides the first one)"
    puts "automaton <number_of_cells> <number_of_generations_to_print>"
  end

  def generate_first
    raise StandardError.new "Number of cells has to be greater than or equal to 1" unless number_of_cells >= 1
    self.current_generation = []
    number_of_cells.times do
      self.current_generation << rand(2) # sets an integer either 0 or 1
    end
  end

  def print_current
    puts current_generation.join
  end

  def generate_next
    self.next_generation = []
    number_of_cells.times do |i|
      left    = i >= 1 ? current_generation[i - 1] : 0
      current = current_generation[i]
      right   = i < number_of_cells - 1 ? current_generation[i + 1] : 0
      self.next_generation << ((left + current + right) == 1 ? 1 : 0)
    end
    self.current_generation = next_generation
  end

  # @param value [String|Array(integer)]
  #
  def current_generation_replace(value)
    value = value.split("").map{|i| i.to_i} if value.is_a?(String)
    self.number_of_cells = value.size
    self.current_generation = value
  end
end
