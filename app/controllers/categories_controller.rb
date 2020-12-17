class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    category_id = sanitize_category_params[:id]
    @category   = Category.find_by(id: category_id)
  end

  def create
    @category = Category.new(form_category_params)

    if @category.save
      redirect_to category_path(@category.id), notice: 'Category was successfully created.'
    else
      render :new
    end
  end

  def edit
    category_id = sanitize_category_params[:id]
    @category = Category.find_by(id: category_id)
  end

  def update
    category = Category.find_by(id: sanitize_category_params[:id])

    if category.update(form_category_params)
      redirect_to category_path(category.id), notice: 'Category was successfully updated.'
    else
      render :new
    end
  end

  private

  def form_category_params
    params.require(:category).permit(:id, :description)
  end

  def sanitize_category_params
    params.permit(:id)
  end

end
