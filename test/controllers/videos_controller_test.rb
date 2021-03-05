require "test_helper"

class VideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @video = videos(:one)
  end

  test "should get index" do
    get videos_url
    assert_response :success
  end

  test "should get new" do
    get new_video_url
    assert_response :success
  end

  test "should create video" do
    assert_difference('Video.count') do
      post videos_url, params: { video: { acceptable_viewer: @video.acceptable_viewer, count_female: @video.count_female, count_injured: @video.count_injured, count_killed: @video.count_killed, count_male: @video.count_male, desc: @video.desc, edited_material: @video.edited_material, item_importance: @video.item_importance, item_special: @video.item_special, name: @video.name, notes: @video.notes, pub_reason: @video.pub_reason, rec_reason: @video.rec_reason, selling_detail_info: @video.selling_detail_info, sound_type: @video.sound_type, text_in: @video.text_in } }
    end

    assert_redirected_to video_url(Video.last)
  end

  test "should show video" do
    get video_url(@video)
    assert_response :success
  end

  test "should get edit" do
    get edit_video_url(@video)
    assert_response :success
  end

  test "should update video" do
    patch video_url(@video), params: { video: { acceptable_viewer: @video.acceptable_viewer, count_female: @video.count_female, count_injured: @video.count_injured, count_killed: @video.count_killed, count_male: @video.count_male, desc: @video.desc, edited_material: @video.edited_material, item_importance: @video.item_importance, item_special: @video.item_special, name: @video.name, notes: @video.notes, pub_reason: @video.pub_reason, rec_reason: @video.rec_reason, selling_detail_info: @video.selling_detail_info, sound_type: @video.sound_type, text_in: @video.text_in } }
    assert_redirected_to video_url(@video)
  end

  test "should destroy video" do
    assert_difference('Video.count', -1) do
      delete video_url(@video)
    end

    assert_redirected_to videos_url
  end
end
