class AddRatableToSongTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :song_texts, :ratable, :boolean, default: true
  end
end
