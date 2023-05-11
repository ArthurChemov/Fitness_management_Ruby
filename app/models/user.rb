class User < ApplicationRecord
    validates :username, presence: true, length: {minimum:2, maximum:40}
    validates :password, presence: true, length: {minimum:2, maximum:40}
end
