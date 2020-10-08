class Messag < ApplicationRecord
  belongs_to :chatroom, required: false
end
