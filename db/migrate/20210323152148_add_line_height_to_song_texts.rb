class AddLineHeightToSongTexts < ActiveRecord::Migration[6.0]
  def change
    add_column :song_texts, :line_height, :string
  end
end
