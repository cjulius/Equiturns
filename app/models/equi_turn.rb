class EquiTurn
  include Mongoid::Document
  field :name, type: String
  field :symbol, type: String
  field :owned, type: Boolean
  field :today, type: Integer
end
