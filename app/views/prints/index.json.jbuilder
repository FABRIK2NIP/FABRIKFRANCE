json.array!(@prints) do |print|
  json.extract! print, :attachment, :name, :materiau, :qualite, :livraison
  json.url print_url(print, format: :json)
end
