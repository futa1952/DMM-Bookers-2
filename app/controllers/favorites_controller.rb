class FavoritesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_favorite

  def create
    uesr = current_user
    post = Post.find(params[:book_id])
    favorite = favorite.create(user_id: user.id, book_id: book.id)
  end

  def destroy
    user = current_user
    post = Post.find(params[:book_id])
    favorite = Favorite.find_by(user_id: user.id, book_id: book.id)
    favorite.delete
  end

  private
    def set_favorite
      @book = Book.find(params[:book_id])
    end
end
