class SongTextsController < ApplicationController
  before_action :set_song_text, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /song_texts or /song_texts.json
  def index
    @song_texts = policy_scope(SongText).order(created_at: :desc)
  end

  # USER_SONG_TEXTS
def user_song_texts
  set_page_to_redirect
  @user = current_user
  @song_text = current_user.song_texts.new
  @song_texts = SongText.where(user_id: @user)
  authorize @song_texts
end

  def show
    @user = current_user
    @song_texts = policy_scope(SongText).order(created_at: :desc)
  end

  # GET /song_texts/new
  def new
    @song_text = current_user.song_texts.new
    authorize @song_text
  end

  # GET /song_texts/1/edit
  def edit
  end

  # POST /song_texts or /song_texts.json
  def create
    @song_text = current_user.song_texts.new(song_text_params)
    authorize @song_text
      if @song_text.save
        redirect_to user_song_texts_path(song: @song_text.id)
        flash[:notice] = " \n #{@song_text.title} was created"
      else
        redirect_to user_song_texts_path(song: @song_text.id)
        flash[:notice] = " \n #{@song_text.title} was NOT created: #{@song_text.errors}"
      end
  end

  # PATCH/PUT /song_texts/1 or /song_texts/1.json
  def update
    @song_text.update(song_text_params)
    authorize @song_text
      if @song_text.save
        redirect_to user_song_texts_path(song: @song_text.id)
        flash[:notice] = " \n #{@song_text.title} was edited"
      else
        redirect_to user_song_texts_path(song: @song_text.id)
        flash[:notice] = " \n #{@song_text.title} was NOT edited: #{@song_text.errors}"
      end
  end

  # DELETE /song_texts/1 or /song_texts/1.json
  def destroy
    # Gets current page to redirect later
    @song_text.user = current_user
    if @song_text.destroy
      redirect_to session.delete(:return_to)
      flash[:notice] = " \n #{@song_text.title} was deleted"
    else
      redirect_to session.delete(:return_to)
      flash[:notice] = " \n #{@song_text.title} was NOT deleted: #{@song_text.errors}"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_text
      #@song_text = policy_scope(SongText).order(created_at: :desc)
      @song_text = SongText.find(params[:id])
      authorize @song_text
    end

    # Only allow a list of trusted parameters through.
    def song_text_params
      #params.fetch(:song_text, {})
      params.require(:song_text).permit(:title, :content, :notes, :rating, :color_tag, :created_at, :updated_at)
    end

    def set_page_to_redirect
      session[:return_to] ||= request.referer
    end

end
