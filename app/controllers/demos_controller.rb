class DemosController < ApplicationController
  def breed
    @breed = 'chow',  'sheperd', 'heeler', 'rotwiller', 'labrador', 'pit bull', 'akita', 'foxhound'
  end
end
