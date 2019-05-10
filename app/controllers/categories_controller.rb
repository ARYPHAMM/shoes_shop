class CategoriesController < ApplicationController
  #layout 'layouts/adminshome'
  before_action :set_category, only: [:show]
  #include ActiveModel::AttributeMethods
  # GET /categories
  # GET /categories.json
  
  def show
    if params[:sort] && params[:show]
      case params[:sort]
      when "1"
        @products = @category.products.order(id: :desc).paginate(page: params[:page], per_page: params[:show])
      when "2"
        @products = @category.products.order(:price).paginate(page: params[:page], per_page: params[:show])
      when "3"
        @products = @category.products.order(price: :desc).paginate(page: params[:page], per_page: params[:show])
      when "4"
        @products = @category.products.order(:name).paginate(page: params[:page], per_page: params[:show])
      else
        @products = @category.products.order(name: :desc).paginate(page: params[:page], per_page: params[:show])
      end
    else
      @products = @category.products.order(id: :desc).paginate(page: params[:page], per_page: 8)
    end
    respond_to do |format|
      format.html 
      format.js   
    end
  end
  # GET /categories/new
  

  # POST /categories
  # POST /categories.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      if Category.exists? id: params[:id] 
        @category = Category.find(params[:id])
      else
        redirect_to root_path
        flash[:danger] = "Category with ID = #{params[:id]} is not exist"
      end 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
