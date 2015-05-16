json.array!(@batches) do |batch|
  json.extract! batch, :id, :user_id, :rudiment_number, :ability_bpm, :ability_beat, :endurance_bpm, :endurance_beat
  json.url batch_url(batch, format: :json)
end
