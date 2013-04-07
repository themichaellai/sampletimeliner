class SamplesController < ApplicationController
  before_filter :correct_user, only: [:edit, :update]
  before_filter :authenticate_user!, only: [:new, :create]

  def new
    @time = params[:time]
    @song = Song.find params[:song_id]
    @sample = Sample.new
  end

  def create
    @song = Song.find params[:song_id]
    @sample = Sample.new params[:sample]
    @sample.song = @song
    @sample.user = current_user
    if @sample.save
      render :text => '<script type="text/javascript"> window.close() </script>'
      return
    else
      flash.now[:error] = 'Could not create!'
      @time = params[:sample][:second_offset]
      render 'new'
      return
    end
  end

  def edit
    @song = Song.find params[:song_id]
  end

  def update
    @sample.update_attributes params[:sample]
    if @sample.save
      redirect_to song_path(@sample.song)
      return
    else
      flash[:error] = 'There are errors with this sample'
      render 'edit'
      return
    end
  end

  private
    def correct_user
      @sample = Sample.find params[:id]
      unless @sample.user == current_user
        flash[:error] = 'You do not own this sample.'
        redirect_to song_path(@sample.song)
      end
    end
end
