class User < ActiveRecord::Base
  include BCrypt
  validates :username, presence: :true, length: { maximum: 20 }
  validates :username, uniqueness: true
  validates :password, presence: :true
  has_many :rounds
  has_many :decks, through: :rounds

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end


