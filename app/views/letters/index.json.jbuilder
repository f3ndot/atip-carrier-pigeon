json.array!(@letters) do |letter|
  json.extract! letter, :id, :lob_id
  json.url letter_url(letter, format: :json)
end
