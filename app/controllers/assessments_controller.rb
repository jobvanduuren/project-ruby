class AssessmentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @assessments = Assessment.all
  end

  def show
    @assessment = Assessment.find(params[:id])
    @student = Student.find(@assessment.student_id)
  end

  def new
    @assessment = Assessment.new
  end

  def create
    @assessment = Assessment.new(assessment_params)

    if @assessment.save
      redirect_to request.referrer
    else

      # redirect_to request.referrer


      render 'new'
    end
  end

  def edit
    @assessment = Assessment.find(params[:id])
  end

  def update
    @assessment = Assessment.find(params[:id])
    @student = Student.find(@assessment.student_id)
    @batch = Batch.find(@student.batch_id)

    if @assessment.update_attributes(assessment_params)
      redirect_to batch_student_path(@batch.id, @student.id)
    else
      render 'edit'
    end
  end

  def destroy
    @assessment = Assessment.find(params[:id])
    @student = Student.find(@assessment.student_id)
    @batch = Batch.find(@student.batch_id)

    @assessment.destroy

    redirect_to batch_student_path(@batch.id, @student.id)
  end

private

  def assessment_params
    params.require(:assessment).permit(:colour, :comment, :date, :student_id)
  end

end
