json.array!(@partners) do |partner|
  json.extract! partner, :id, :name, :address, :zip_code, :website, :email, :program_start, :program_end, :logo, :phone
  json.url partner_url(partner, format: :json)
end
