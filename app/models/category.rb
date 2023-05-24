class Category < ApplicationRecord
    has_many :products, dependent: :delete_all
    has_one_attached :image
    has_many :orders , :through => :products
end


