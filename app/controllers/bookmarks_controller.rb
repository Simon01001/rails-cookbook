class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @category = Category.find(params[:category_id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @category = @bookmark.category
    @bookmark.destroy
    redirect_to category_path(@category), status: :see_other
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @category = Category.find(params[:category_id])
    @bookmark.category = @category
    if @bookmark.save
      redirect_to category_path(@category)
    else
      redirect_to categories_path
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :recipe_id, :category_id)
  end
end
