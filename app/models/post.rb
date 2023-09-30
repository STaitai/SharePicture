class Post < ApplicationRecord
    validates :picturename, {presence: true}
    validates :postname, {presence: true}
end
