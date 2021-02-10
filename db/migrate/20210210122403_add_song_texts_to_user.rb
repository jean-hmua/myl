class AddSongTextsToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :song_texts, foreign_key: true
  end
end
