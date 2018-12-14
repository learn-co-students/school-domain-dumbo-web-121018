class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(name)
        roster[name]
    end

    def sort
        ordered_student = {}
        roster.each do |grade, student_name|
            ordered_student[grade] = student_name.sort
        end
        ordered_student
    end
end