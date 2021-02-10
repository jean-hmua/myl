class AddUserToSongText < ActiveRecord::Migration[6.0]
  def change
    add_reference :song_texts, :user, null: false, foreign_key: true
  end
end
