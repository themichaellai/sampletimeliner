class SamplesController < ApplicationController
  def new
    @time = params[:time]
    @song = Song.find params[:song_id]
    @sample = Sample.new
  end

  def create
    @song = Song.find params[:song_id]
    @sample = Sample.new params[:sample]
    @sample.song = @song
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
end
