class CreditController < ApplicationController
  def Credits_page
    @section = Section.all
  end
end
