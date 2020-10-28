class User < ApplicationRecord
  has_secure_token
  has_one_attached :avatar
end
