class AuthorsController < ApplicationController
  before_action :set_author, only: [:edit, :show, :update, :destroy]

  def show
  end

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to authors_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
      if @author.update(author_params)
        redirect_to authors_path(@author)
      else
        render "edit"
      end
    end

    def destroy
      @author.destroy
      redirect_to authors_path
    end

  private
  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params[:author].permit(
      :name,
      :from,
      :image,
      :remove_image,
    )
  end





end
