# code here!

class School

attr_reader :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name,grade)
    @roster[grade]=[] unless @roster.include?(grade)
    @roster[grade]<<student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted_list= {}
    @roster.each do|grade,students|
    sorted_list[grade]=students.sort
    end
    sorted_list
  end


end
