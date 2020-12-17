class EphemeriesController < ApplicationController

  def index
    @ephemeries = Ephemery.all
  end

  def show
    ephemery_id = sanitize_ephemery_params[:id]
    @ephemery = Ephemery.find_by(id: ephemery_id)
  end

  def create
    @ephemery = Ephemery.new(form_ephemery_params)

    if @ephemery.save
      redirect_to ephemery_path(@ephemery.id), notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def edit
    ephemery_id = sanitize_ephemery_params[:id]
    @ephemery = Ephemery.find_by(id: ephemery_id)
  end

  def update
    ephemery = Ephemery.find_by(id: sanitize_ephemery_params[:id])

    if ephemery.update(form_ephemery_params)
      redirect_to ephemery_path(ephemery.id), notice: 'Event was successfully updated.'
    else
      render :new
    end
  end

  private

  def form_ephemery_params
    params.require(:ephemery).permit(:id, :text, :ephemer_date, :image, :category_id)
  end

  def sanitize_ephemery_params
    params.permit(:id)
  end

end
