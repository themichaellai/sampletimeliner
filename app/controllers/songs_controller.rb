class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new params[:song]
    @song.user = current_user

    if @song.save
      flash[:success] = 'Song created!'
      redirect_to song_path(@song)
    else
      flash[:error] = 'Error'
      render 'new'
    end
  end

  def show
    @song = Song.find(params[:id])
    @samples = @song.samples
  end
end
