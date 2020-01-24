class User < ApplicationRecord
  attr_reader :password

  validates :username, :session_token, presence: true, uniqueness: true
  validates :valid_password, presence: {message: 'cannot be blank!'}

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
