module CommonActions

  extend ActiveSupport::Concern

  def set_categories
    @categories = Category.where(params[:id])
    @category_children1 = Category.where(parent_id: 1)
    @category_children2 = Category.where(parent_id: 200)
    @category_children3 = Category.where(parent_id: 346)
    @category_children4 = Category.where(parent_id: 481)
    @category_children5 = Category.where(parent_id: 625)
    @category_children6 = Category.where(parent_id: 685)
    @category_children7 = Category.where(parent_id: 798)
    @category_children8 = Category.where(parent_id: 898)
    @category_children9 = Category.where(parent_id: 984)
  end

end