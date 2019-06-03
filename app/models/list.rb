class List < ApplicationRecord
	belongs_to :socio
	has_many :recepcion
end
