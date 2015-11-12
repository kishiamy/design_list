class DesignSearcherController < ApplicationController

  def index
    @images = ImagesQuery.new(images_filter)
  end

  private

  def images_filter
    params.fetch(:search, {}).permit(
      :q,
      :sort,
      :color1,
      :color2,
      :color3,
      :color4
    )
  end

end
