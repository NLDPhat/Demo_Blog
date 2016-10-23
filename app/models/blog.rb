class Blog < ApplicationRecord
    belongs_to :user
    has_many :comments, :dependent => :destroy
    validates :Title, presence: true,
                length: { maximum: 200}
    validates :post, presence: true
end
