class MockupsController < ApplicationController
  def show
    @candidate = params[:id] || 'candidate1'
    render :show
  end
end
