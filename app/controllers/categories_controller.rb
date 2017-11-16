class CategoriesController < ApplicationController

  def index
    @book = Book.find(params[:book_id])
    @categories = @book.category.all

  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @book = Book.find(params[:book_id])
    @category = @book.categories.new
  end

  def create
      @book = Book.find(params[:book_id])
      @category = @book.categories.new(category_params)
      if @category.save
        redirect_to book_path(@category.book)
      else
        render :new
      end
    end

    def edit
    @book = Book.find(params[:book_id])
    @category = Category.find(params[:id])
    render :edit
  end

  def update
   @category = Category.find(params[:id])
   @book = @category.book
   if @category.update(category_params)
     redirect_to book_path(@book)
   else
     render 'categories/edit'
   end
 end

 def destroy
    @book = Book.find(params[:book_id])
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to book_path(@book)
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
