class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    grades = Student.all.order grade: :desc 
    render json: grades
  end

  def highest_grade
    grade = Student.all.order grade: :desc
    render json: grade.first
    # "first_name: #{self.first_name}, last_name: #{self.last_name}, grade: #{self.grade}"
  end
end
