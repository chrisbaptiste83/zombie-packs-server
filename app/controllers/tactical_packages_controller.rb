class TacticalPackagesController < ApplicationController 

    before_action :set_tactical_package, only: [:show, :update, :destroy]

  # GET /tactical_packages
  def index
    @tactical_packages = TacticalPackage.all
    render json: TacticalPackageSerializer.new(@tactical_packages)
  end

  # GET /tactical_packages/1
  def show
    render json: TacticalPackageSerializer.new(@tactical_package)
  end

  # POST /tactical_packages
  def create
    @tactical_package = TacticalPackage.new(tactical_package_params)

    if tactical_package.save
      render json: TacticalPackageSerializer.new(@tactical_package), status: :created, location: @tactical_package
    else
      render json: @tactical_package.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tactical_packages/1
  def update
    if @tactical_package.update(tactical_package_params)
      render json: TacticalPackageSerializer.new(@tactical_package)
    else
      render json: @tactical_package.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tactical_packages/1
  def destroy
    @tactical_package.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tactical_package
      @tactical_package = TacticalPackage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tactical_package_params
      params.require(:tactical_package).permit(:user_id, :title, :description, :creator, :primary_weapon_name, :primary_weapon_image_url, :secondary_weapon_name, :secondary_weapon_image_url, :lethal_weapon_name, :lethal_weapon_image_url, :tactical_item_name, :tactical_item_image_url)
    end
end
