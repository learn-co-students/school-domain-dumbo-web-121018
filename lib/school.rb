require 'pry'

class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    if @roster.key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = []
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    hash = @roster.sort.to_h
    new_hash = {}
    hash.map do |grade, students|
      new_hash[grade] = students.sort

    end
    binding.pry
    new_hash
  end




end
