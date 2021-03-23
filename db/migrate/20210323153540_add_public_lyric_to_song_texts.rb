class AddPublicLyricToSongTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :song_texts, :public_lyric, :boolean, default: false
  end
end
