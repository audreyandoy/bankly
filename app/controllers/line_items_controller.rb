class LineItemsController < ApplicationController
  def new #view
    @categories = Category.all
    @line_item = LineItem.new
  end

  def create
    puts post_params
    new_item = @current_user.line_item.create(post_params)
    redirect_to dashboard_path
  end

  def show
    @line_item = LineItem.all
    @total = 0
  end


  def edit
    @line_item = LineItem.find(params[:id])
  end

  def category
  	category = params[:category_name]
  	@category_list = Category.find_by_name(category)
  	@list = @current_user.line_item.where(category_id: @category_list.id)
  	render layout: false, template: "line_items/category"
  end

  def update
    @item = LineItem.find(params[:id])
    @item.update(post_params)
    redirect_to line_items_show_path
  end 

  def destroy
    LineItem.find(params[:id]).delete
    redirect_to line_items_show_path
  end

  private

  def post_params
    params.require(:line_item).permit(:name, :amount, :description, :date, :category_id)
  end
end
