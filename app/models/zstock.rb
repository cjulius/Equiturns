# require 'yahoo_finance'

class Zstock
  include Mongoid::Document

  field :stock, type: String
  field :name, type: String
  field :price, type: Integer
  field :change, type: Integer
 
end