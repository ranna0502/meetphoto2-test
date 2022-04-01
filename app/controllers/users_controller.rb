class UsersController < ApplicationController
  has_many :addresses, dependent: :destroy
end
