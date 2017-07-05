class BatchesController < ApplicationController
before_action :authenticate_user!

  def index
    @batches = Batch.all.chronological
  end

  def show
    @batch = Batch.find(params[:id])
    @students = @batch.students

  end

  def new
    @batch = Batch.new
  end

  def create
    @batch = Batch.new(batch_params)

    if @batch.save
      redirect_to @batch
    else
      render 'new'
    end
  end

  def edit
    @batch = Batch.find(params[:id])
  end

  def update
    @batch = Batch.find(params[:id])

    if @batch.update_attributes(batch_params)
      redirect_to @batch
    else
      render 'edit'
    end
  end

  def destroy
    @batch = Batch.find(params[:id])

    @batch.destroy

    redirect_to batches_path
  end

private

  def batch_params
    params.require(:batch).permit(:batch_number, :start_date, :end_date)
  end


end
