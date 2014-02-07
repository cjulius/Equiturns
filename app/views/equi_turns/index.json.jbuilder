json.array!(@equi_turns) do |equi_turn|
  json.extract! equi_turn, :id
  json.url equi_turn_url(equi_turn, format: :json)
end
