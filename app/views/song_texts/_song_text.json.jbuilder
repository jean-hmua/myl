json.extract! song_text, :id, :created_at, :updated_at
json.url song_text_url(song_text, format: :json)
