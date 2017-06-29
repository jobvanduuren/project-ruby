class StudentsController < ApplicationController

  def index

    @students = Student.all.chronological
  end

  def show
    @student = Student.find(params[:id])
    @assessments = @student.assessments
  end

  def new
    @student = Student.new
  end

  def create
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

    if @student.update_attributes(student_params)
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to students_path
  end

  def contact
    @assessment = Assessment.new
  end

  def name
    student.first_name + student.surname
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :surname, :image_url)
  end

end
