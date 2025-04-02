class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, format: URI::MailTo::EMAIL_REGEXP
  # enum role: %i[user admin]

  def self.authenticate(email, password)
    user = find_for_authentication(email: email)
    user&.valid_password?(password) ? user : nil
  end
end
