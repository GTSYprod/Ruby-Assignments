class HelloWorld
  def initialize(name)
    @name = name
  end

  def hello(person_name = nil)
    if person_name
      "Hello, #{person_name}. My name is #{@name}!"
    else
      "Hello, World. My name is #{@name}!"
    end
  end
end