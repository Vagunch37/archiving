json.extract! video, :id, :name, :desc, :notes, :text_in, :pub_reason, :rec_reason, :sound_type, :edited_material, :selling_detail_info, :acceptable_viewer, :item_special, :item_importance, :count_killed, :count_injured, :count_male, :count_female, :created_at, :updated_at
json.url video_url(video, format: :json)
