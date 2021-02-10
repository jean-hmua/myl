class SongTextsController < ApplicationController
  before_action :set_song_text, only: %i[ show edit update destroy ]

  # GET /song_texts or /song_texts.json
  def index
    @user = current_user
    @song_texts = SongText.where(user_id = @user)
    authorize @song_texts
  end

  # GET /song_texts/1 or /song_texts/1.json
  def show
    authorize @song_text
  end

  # GET /song_texts/new
  def new
    @song_text = SongText.new
    authorize @song_texts
  end

  # GET /song_texts/1/edit
  def edit
    authorize @song_text
  end

  # POST /song_texts or /song_texts.json
  def create
    @song_text = SongText.new(song_text_params)
    authorize @song_texts
    respond_to do |format|
      if @song_text.save
        format.html { redirect_to @song_text, notice: "Song text was successfully created." }
        format.json { render :show, status: :created, location: @song_text }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @song_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /song_texts/1 or /song_texts/1.json
  def update
    respond_to do |format|
      authorize @song_texts
      if @song_text.update(song_text_params)
        format.html { redirect_to @song_text, notice: "Song text was successfully updated." }
        format.json { render :show, status: :ok, location: @song_text }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @song_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_texts/1 or /song_texts/1.json
  def destroy
    @song_text.destroy
    respond_to do |format|
      format.html { redirect_to song_texts_url, notice: "Song text was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_song_text
      @song_text = SongText.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def song_text_params
      params.fetch(:song_text, {})
    end
end
