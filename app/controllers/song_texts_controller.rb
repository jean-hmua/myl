class SongTextsController < ApplicationController
  before_action :set_song_text, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  def index
    @song_texts = policy_scope(SongText.where(public_lyric: true)).order(created_at: :desc).page params[:page]
    #@song_texts = @all_song_texts.where(public_lyric: true)
  end

  def user_song_texts
    set_page_to_redirect
    @user = current_user
    @song_text = current_user.song_texts.new
    @song_texts = SongText.where(user_id: @user)
    authorize @song_texts
  end

  def show
    @user = current_user
    @song_text = SongText.find(params[:id])
  end

  def new
    @song_text = current_user.song_texts.new
    authorize @song_text
  end

  def edit
  end

  def create
    @song_text = current_user.song_texts.new(song_text_params)
    authorize @song_text
    if @song_text.save
      flash[:notice] = " \n #{@song_text.title} was created"
    else
      flash[:notice] = " \n #{@song_text.title} was NOT created: #{@song_text.errors}"
    end
    redirect_to user_song_texts_path(song: @song_text.id)
  end

  def update
    @song_text.update(song_text_params)
    authorize @song_text
    if @song_text.save
      flash[:notice] = " \n #{@song_text.title} was edited"
    else
      flash[:notice] = " \n #{@song_text.title} was NOT edited: #{@song_text.errors}"
    end
    redirect_to user_song_texts_path(song: @song_text.id)
  end

  def destroy

    @song_text.user = current_user
    if @song_text.destroy
      flash[:notice] = " \n #{@song_text.title} was deleted"
    else
      flash[:notice] = " \n #{@song_text.title} was NOT deleted: #{@song_text.errors}"
    end
    redirect_to user_song_texts_path
  end

  private

  def set_song_text
    @song_text = SongText.find(params[:id])
    authorize @song_text
  end

  def song_text_params
    params.require(:song_text).permit(:title, :content, :notes, :rating, :color_tag, :created_at, :updated_at)
  end

  def set_page_to_redirect
    session[:return_to] ||= request.referer
  end

end
