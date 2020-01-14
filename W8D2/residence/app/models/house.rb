class House < ApplicationRecord
    validates :address, presence true
    validates :owner_id, presence true

    belongs_to :owner, 
        class_name: "Person",
        primary_key: :id,
        foreign_key: :owner_id
end
