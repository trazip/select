class PreferencesController < ApplicationController
  layout false
  
  def index
    @preferences = Preference.where("category = ?", params[:category]).map(&:name)
  end
end