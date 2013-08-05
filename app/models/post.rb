# encoding: utf-8
#include ActiveModel::ForbiddenAttributesProtection

class Post < ActiveRecord::Base
  has_many :comments
  attr_accessible :text, :title
  validates :title,presence: true,length: { minimum: 5 }
end
