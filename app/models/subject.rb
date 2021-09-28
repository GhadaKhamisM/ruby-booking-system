class Subject < ApplicationRecord

    #has_one :page
    has_many :pages

    scope :visible, lambda { where(:visible => true)}
    scope :invisible, lambda { where(:visible => false)}
    scope :search, lambda {|name| where(["name LIKE ?","%#{name}%"])}
end
