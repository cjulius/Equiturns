require 'bcrypt'

class User
  include Mongoid::Document

  attr_accessor :password, :password_confirmation

  field :username, type: String
  field :salt, type: String
  field :hashed_password, type: String
  field :email_address, type: String

  before_save :hash_stuff

  def check_password(pwd)
  	self.hashed_password == BCrypt::Engine.hash_secret(
  		pwd, self.salt)
  end

private
  def hash_stuff
  	self.salt = BCrypt::Engine.generate_salt
  	self.hashed_password = BCrypt::Engine.hash_secret(
  			password, self.salt)
  	password = password_confirmation = nil
  end

end
