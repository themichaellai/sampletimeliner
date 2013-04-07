class SongsController < ApplicationController
  def index
    @songs = Song.paginate page: params[:page], per_page: 20
  end
  def new
    @song = Song.new
  end

  def create
    @song = Song.new params[:song].except(:artist)
    @song.user = current_user
    @artist = Artist.find_or_create_by_name(params[:song][:artist])
    @song.artist = @artist

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
    @colors = [:red, :orange, :green, :blue]
    @samples = @song.samples.map do |sample|
      {
        sample: sample,
        color: @colors.rotate![0]
      }
    end
  end
end
