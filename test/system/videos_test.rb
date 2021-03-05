require "application_system_test_case"

class VideosTest < ApplicationSystemTestCase
  setup do
    @video = videos(:one)
  end

  test "visiting the index" do
    visit videos_url
    assert_selector "h1", text: "Videos"
  end

  test "creating a Video" do
    visit videos_url
    click_on "New Video"

    check "Acceptable viewer" if @video.acceptable_viewer
    fill_in "Count female", with: @video.count_female
    fill_in "Count injured", with: @video.count_injured
    fill_in "Count killed", with: @video.count_killed
    fill_in "Count male", with: @video.count_male
    fill_in "Desc", with: @video.desc
    check "Edited material" if @video.edited_material
    fill_in "Item importance", with: @video.item_importance
    check "Item special" if @video.item_special
    fill_in "Name", with: @video.name
    fill_in "Notes", with: @video.notes
    fill_in "Pub reason", with: @video.pub_reason
    fill_in "Rec reason", with: @video.rec_reason
    fill_in "Selling detail info", with: @video.selling_detail_info
    fill_in "Sound type", with: @video.sound_type
    fill_in "Text in", with: @video.text_in
    click_on "Create Video"

    assert_text "Video was successfully created"
    click_on "Back"
  end

  test "updating a Video" do
    visit videos_url
    click_on "Edit", match: :first

    check "Acceptable viewer" if @video.acceptable_viewer
    fill_in "Count female", with: @video.count_female
    fill_in "Count injured", with: @video.count_injured
    fill_in "Count killed", with: @video.count_killed
    fill_in "Count male", with: @video.count_male
    fill_in "Desc", with: @video.desc
    check "Edited material" if @video.edited_material
    fill_in "Item importance", with: @video.item_importance
    check "Item special" if @video.item_special
    fill_in "Name", with: @video.name
    fill_in "Notes", with: @video.notes
    fill_in "Pub reason", with: @video.pub_reason
    fill_in "Rec reason", with: @video.rec_reason
    fill_in "Selling detail info", with: @video.selling_detail_info
    fill_in "Sound type", with: @video.sound_type
    fill_in "Text in", with: @video.text_in
    click_on "Update Video"

    assert_text "Video was successfully updated"
    click_on "Back"
  end

  test "destroying a Video" do
    visit videos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Video was successfully destroyed"
  end
end
