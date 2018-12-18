require 'pry'

class School
  attr_accessor :name
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}  #use array to hold hashes
  end

  def add_student(name,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
    #binding.pry
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |k,v|
      @roster[k] = v.sort
      #binding.pry
    end
  end

end


# class School
#   attr_reader :name, :grade
#
#   def initialize(grade,name)
#     @grade = grade
#     @name = name
#     @@roster = {}
#   end
#
#   def grade=(grade)
#     @grade = grade
#   end
#
#   def add_student(name,grade)
#     @@roster[grade] = [name]
#   end
#
#   def self.roster
#     @@roster
#   end
# end
