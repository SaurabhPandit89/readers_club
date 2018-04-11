class FavouriteGenresController < ApplicationController
  def index
    @genres = Genre.all
    @favourite_genre = FavouriteGenre.new
  end

  def create
    favourite_genre = current_user.favourite_genres.build(genre_id: params[:favourite_genre][:genre_id])
    if favourite_genre.save
      flash[:success] = 'Genre was successfully marked as favourite.'
      status = 200
    else
      flash[:error] = 'Genre was failed to be marked as favourite.'
      status = 400
    end
    render :response, locals: { favourite_genre: favourite_genre, status: status }
  end

  def destroy
    favourite_genre = current_user.favourite_genres.find(params[:id])
    if favourite_genre.destroy
      flash[:success] = 'Genre was successfully removed from favourites.'
      status = 200
    else
      flash[:error] = 'Genre was failed to be removed from favourites.'
      status = 400
    end
    render :response, locals: { favourite_genre: favourite_genre, status: status }
  end
end
