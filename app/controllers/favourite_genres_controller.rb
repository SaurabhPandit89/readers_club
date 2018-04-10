class FavouriteGenresController < ApplicationController
  def index
    @genres = Genre.all
    @favourite_genre = FavouriteGenre.new
  end

  def create
    favourite_genre = current_user.favourite_genres.build(genre_id: params[:favourite_genre][:genre_id])
    if favourite_genre.save
      flash[:success] = 'Genre was successfully marked as favourite.'
    else
      flash[:error] = 'Genre was failed to be marked as favourite.'
    end
    redirect_to favourite_genres_path
  end

  def destroy
    if current_user.favourite_genres.find(params[:id]).destroy!
      flash[:success] = 'Genre was successfully removed from favourites.'
    else
      flash[:error] = 'Genre was failed to be removed from favourites.'
    end
    redirect_to favourite_genres_path
  end
end
