json.array!(@participants) do |participant|
  json.extract! participant, :id, :partner_id, :first_name, :last_name, :absence, :email, :date_of_birth, :home_address, :school, :parent_name, :student
  json.url participant_url(participant, format: :json)
end
