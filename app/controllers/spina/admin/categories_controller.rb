module Spina
  module Admin
    class CategoriesController < AdminController
      before_filter :set_breadcrumb
      before_action :set_category, only: [:show, :edit, :update, :destroy]

      layout "spina/admin/website"

      def show
      end

      def index
        @categories = Category.all
      end

      def new
        add_breadcrumb "New category", spina.new_admin_category_path
        @category = Category.new
      end

      def edit
        add_breadcrumb @category.title
      end

      def create
        add_breadcrumb "New category"
        @category = Category.new(category_params)
        if @category.save
          redirect_to spina.admin_categories_url, notice: "Category successfully created"
        else
          render :new
        end
      end

      def update
        add_breadcrumb @category.title
        if @category.update_attributes(category_params)
          redirect_to spina.admin_categories_url, notice: "Category saved"
        else
          render :edit
        end
      end

      def destroy
        @category.destroy
        redirect_to spina.admin_categories_url, notice: "The category has been deleted"
      end

      private

      def set_category
        @category = Category.find(params[:id])
      end

      def set_breadcrumb
        add_breadcrumb "Categories", spina.admin_categories_path
      end

      def category_params
        params.require(:category).permit(:title, :description)
      end
    end
  end
end
