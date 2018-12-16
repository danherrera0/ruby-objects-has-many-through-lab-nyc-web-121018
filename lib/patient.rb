class Patient 

attr_accessor

@@all =[]

def initialize(argument)
  @argument = argument
  @@all << name
end

def self.all
  @@all
end


end
