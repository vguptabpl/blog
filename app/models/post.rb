# encoding: utf-8
class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  has_many :comments
  attr_accessible :text, :title
  validates :title,presence: true,length: { minimum: 5 }
end
