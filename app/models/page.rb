class Page < ApplicationRecord
    has_many :sections
    belongs_to :subject, { :optional => false}
    has_and_belongs_to_many :doctors
end
