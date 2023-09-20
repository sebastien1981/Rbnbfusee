class Fusee < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy
  validates :name, :price, :description, presence: :true
  validates :name, uniqueness: true
end
