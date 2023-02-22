class Livro < ApplicationRecord
    # Vai validar as entradas, tem que preencher os campos
    validates :titulo, :autor, :nota, presence: true
end
