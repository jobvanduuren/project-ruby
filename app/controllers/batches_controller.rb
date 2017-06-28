class BatchesController < ApplicationController

  def index
    @batches = Batch.all
  end

  def show
    @batch = Batch.find(params[:id])
    @students = @batch.students
  end

  def new
    @batch = Batch.new
  end


end
