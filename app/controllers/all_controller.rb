class AllController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @items = Item.all.order(sort_column + ' ' + sort_direction)
  end

  private

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end

    def sort_column
        Item.column_names.include?(params[:sort]) ? params[:sort] : "purdate"
    end
end
