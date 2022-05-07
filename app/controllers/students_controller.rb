class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    sorted = Student.order(:grade).reverse
    render json: sorted
  end

  def highest_grade
    highest = Student.order(:grade).reverse.first
    render json: highest
  end

end
