require "pry"

class School
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  attr_accessor :school_name
  attr_reader :roster

  def add_student(student, grade)
    unless @roster[grade]
      @roster[grade] = []
    end
    @roster[grade] << student
  end

  def grade(num)
    @roster[num]
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = @roster[grade].sort
    end
    @roster
  end

end

# hellmouth = School.new("Northgate")
# hellmouth.add_student("zob", 9)
# hellmouth.add_student("zanana", 12)
# hellmouth.add_student("tacos", 11)
# hellmouth.add_student("john", 10)
# hellmouth.add_student("floppy", 12)
# hellmouth.add_student("potato", 11)
# hellmouth.add_student("no", 10)
# hellmouth.add_student("someone", 9)
# hellmouth.sort
