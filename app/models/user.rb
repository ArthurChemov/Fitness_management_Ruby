class User < ApplicationRecord
  belongs_to :trainer
  belongs_to :training
  belongs_to :nutrit
  belongs_to :subscription
  belongs_to :coupon
  has_one :review, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
