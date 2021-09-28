class Section < ApplicationRecord
    belongs_to :page
    has_many :section_editors
    has_many :doctors, :through => :section_editors

end
