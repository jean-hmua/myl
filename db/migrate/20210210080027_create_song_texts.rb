class CreateSongTexts < ActiveRecord::Migration[6.0]
  def change
    create_table :song_texts do |t|
      t.string :title
      t.text :content
      t.string :notes
      t.string :colorTag

      t.timestamps
    end
  end
end
