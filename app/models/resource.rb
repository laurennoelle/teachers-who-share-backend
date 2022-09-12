class Resource < ApplicationRecord
    validates :title, :subject, :description, :image, presence: true
    validates :grade, numericality: {greater_than: 0}
    validates :reviews, numericality: {less_than: 200}
    
end
