class TitlesController < ApplicationController

  def show
    @title = Title.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @title = @category.titles.new
  end

  def create
    @category = Category.find(params[:category_id])
    @title = @category.titles.new(title_params)
    if @title.save
      redirect_to category_path(@title.category)
    else
      render :new
    end
  end

  def edit
    @category = Category.find(params[:category_id])
    @title = Title.find(params[:id])
  end

  def update
    @title = Title.find(params[:id])
    @category = @title.category
    if @title.update(title_params)
      redirect_to category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    @title = Title.find(params[:id])
    @category = Category.find(params[:category_id])
    @title.destroy
      redirect_to category_path(@category)
  end

  private
  def title_params
    params.require(:title).permit(:name, :author, :image)
  end
end
