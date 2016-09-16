class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  use_growlyflash
  skip_growlyflash only: %i[actions without growlyflash]
end
