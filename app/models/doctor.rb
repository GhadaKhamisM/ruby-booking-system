class Doctor < ApplicationRecord
    has_and_belongs_to_many :pages
    has_many :section_editors
    has_many :sections, :through => :section_editors

end
