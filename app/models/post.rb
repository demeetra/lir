class Post < ApplicationRecord
    validates :title, :presence => true

    has_many :comments, :dependent => :destroy
    has_many :likes, dependent: :destroy
    has_many :unlikes, dependent: :destroy
    has_many :favorites, dependent: :destroy
    mount_uploader :image, ImageUploader

    belongs_to :user
    belongs_to :topic
    belongs_to :category

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
