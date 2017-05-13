json.extract! equipo, :id, :nombre, :estatus, :created_at, :updated_at
json.url equipo_url(equipo, format: :json)