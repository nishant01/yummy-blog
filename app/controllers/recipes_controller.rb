class RecipesController < ApplicationController
  #before_action :load_entries

  def index
    @entries = $CONTENTFUL.entries(content_type: 'recipe', include: 2)
  end

  def show
    @recipe = $CONTENTFUL.entry(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
