class StaticPagesController < ApplicationController
  def home
  end

  def help
    @shopping_list_items = []
    @shopping_list_items.push(y: 5, label: "Apple")
    @shopping_list_items.push(y: 6, label: "orange")
    @shopping_list_items.push(y: 7, label: "orange1")
    @shopping_list_items.push(y: 8, label: "orange2")
     render json: @shopping_list_items
  end
end
