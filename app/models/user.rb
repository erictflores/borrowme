class User < ActiveRecord::Base
  has_many :items

  validates :username, :presence => true, :uniqueness => true
  validates :name, :presence => true
  validates :password, :presence => true

  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(password)
    self.password == password
  end
end
