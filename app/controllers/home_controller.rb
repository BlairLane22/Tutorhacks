class HomeController < ApplicationController
  def index
  end

  def pricing
    @pricing = true
  end

  def about
    @about = true
  end

  def terms_of_service
  end

  def stats
    @stats = true
    @tutor = Tutor.count
    @student = Student.count
  end
end
