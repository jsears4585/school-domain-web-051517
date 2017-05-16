# code here!
class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, student_grade)
    if (!@roster[student_grade])
      @roster[student_grade] = []
    end
    @roster[student_grade] << student_name
  end

  def grade(grade_num)
    @roster[grade_num]
  end

  def sort
    @roster.map { |k, v| v.sort! }
    @roster
  end
end
