# code here!
require 'pry'
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort # looks messy
    organized = {}
    Hash[@roster.sort].each do |name|
      organized[name[0]] = name[1].sort
    end
    return organized
  end

end

# flatiron = School.new("Flatiron")
# flatiron.add_student("Kah", 1)
# flatiron.add_student("Kyle", 2)
# flatiron.add_student("Ludy", 1)
# puts flatiron.roster.keys
