require "application_system_test_case"

class SongTextsTest < ApplicationSystemTestCase
  setup do
    @song_text = song_texts(:one)
  end

  test "visiting the index" do
    visit song_texts_url
    assert_selector "h1", text: "Song Texts"
  end

  test "creating a Song text" do
    visit song_texts_url
    click_on "New Song Text"

    click_on "Create Song text"

    assert_text "Song text was successfully created"
    click_on "Back"
  end

  test "updating a Song text" do
    visit song_texts_url
    click_on "Edit", match: :first

    click_on "Update Song text"

    assert_text "Song text was successfully updated"
    click_on "Back"
  end

  test "destroying a Song text" do
    visit song_texts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Song text was successfully destroyed"
  end
end
