class WorksController < ApplicationController
  before_action :set_work, only: [:edit, :show, :update, :destroy]

  def show
  end

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
    @work.author_id = params[:author_id] if params[:author_id].present?
  end

  def create
    @work = Work.new(work_params)
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
        redirect_to works_path(@work)
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

  def work_params
    params[:work].permit(
      :title,
      :release,
      :author,
      :description,
      :author_id,
      :image,
      :remove_image,
    )
  end





end
