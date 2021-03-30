class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def profile
    @user = User.find(params[:id])
    @song_texts = []
    @user_song_texts = SongText.where(user: @user)
    @user_song_texts.each do |s|
      @song_texts << s if s.public_lyric == true
    end
  end
end
