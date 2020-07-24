class WorksController < ApplicationController
  before_action :set_restaurant, only: [:edit, :show, :update, :destroy]

  def show
  end

  def index
  end

  def new
  end

  def create
    @work = Work.new(restaurant_params)
    if @work.save
      redirect_to works_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
      if @work.update(work_params)
        redirect_to restaurants_path(@work)
      else
        render "edit"
      end
    end

    def destroy
      @work.destroy
      redirect_to works_path
    end

  private
  def set_work
    @work = Work.find(params[:id])
  end






end
