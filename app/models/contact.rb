class Contact < ApplicationRecord
    attr_accessor :name, :email, :tel, :content
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end
