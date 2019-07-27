class RecipesController < ApplicationController
  #before_action :load_entries

  def index
    @entries = $CONTENTFUL.entries(content_type: 'recipe', include: 2)
    rescue
      @entries = {}
  end

  def show
    @recipe = $CONTENTFUL.entry(params[:id])
    rescue
      @recipe = {}
    respond_to do |format|
      format.html
      format.js
    end
  end
end
