class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :fusees, dependent: :destroy
  validates :first_name, :last_name, :username, presence: :true
  validates :email, uniqueness: true
  #validates :password, length: { in: 6..20 }
  validates :username, length: { in: 5..20 }

end
