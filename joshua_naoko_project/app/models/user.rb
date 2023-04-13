class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    # validates :username, presence: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy
end