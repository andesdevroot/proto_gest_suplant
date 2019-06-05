class Socio < ApplicationRecord
	has_many :recepcions
  has_many :compromisos
	belongs_to:socio
end
