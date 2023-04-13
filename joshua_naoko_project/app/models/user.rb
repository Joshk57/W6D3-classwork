class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    # validates :username, presence: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork,
        dependent: :destroy

    has_many :shared_viewers,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy

    has_many :shared_artworks,
        through: :shared_viewers,
        source: :artwork,
        dependent: :destroy

end