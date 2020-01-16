class Person < ApplicationRecord
    validates :fname, presence: true
    validates :lname, presence: true
    validates :house_id, presence: true

    has_many :houses,
        class_name: "House",
        primary_key: :id,
        foreign_key: :house_id, 
end


