class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student_params = params.require(:student).permit(:first_name, :surname, :image_url)

    @student = Student.new(student_params)

    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    student_params = params.require(:student).permit(:first_name, :surname, :image_url)

    if @student.update_attributes(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

end
