class Trainer < ApplicationRecord
    validates :trainername, presence: true, length: {minimum:2, maximum:40}
    validates :password, presence: true, length: {minimum:2, maximum:40}
end
