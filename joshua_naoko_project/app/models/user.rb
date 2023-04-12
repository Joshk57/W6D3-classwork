class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    # validates :username, presence: true

end