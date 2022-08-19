class BookmarksController < ApplicationController
  def bookmark
    @bookmark = Bookmark.all
  end
  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def create
  end

  def destroy
  end

end
