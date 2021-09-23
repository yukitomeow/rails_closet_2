class ItemOrganizingsController < ApplicationController
  before_action :set_item_organizing, only: %i[ show edit update destroy ]

  # GET /item_organizings or /item_organizings.json
  def index
    @item_organizings = ItemOrganizing.all
  end

  # GET /item_organizings/1 or /item_organizings/1.json
  def show
  end

  # GET /item_organizings/new
  def new
    @item_organizing = ItemOrganizing.new
  end

  # GET /item_organizings/1/edit
  def edit
  end

  # POST /item_organizings or /item_organizings.json
  def create
    @item_organizing = ItemOrganizing.new(item_organizing_params)

    respond_to do |format|
      if @item_organizing.save
        format.html { redirect_to @item_organizing, notice: "Item organizing was successfully created." }
        format.json { render :show, status: :created, location: @item_organizing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_organizing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_organizings/1 or /item_organizings/1.json
  def update
    respond_to do |format|
      if @item_organizing.update(item_organizing_params)
        format.html { redirect_to @item_organizing, notice: "Item organizing was successfully updated." }
        format.json { render :show, status: :ok, location: @item_organizing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_organizing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_organizings/1 or /item_organizings/1.json
  def destroy
    @item_organizing.destroy
    respond_to do |format|
      format.html { redirect_to item_organizings_url, notice: "Item organizing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_organizing
      @item_organizing = ItemOrganizing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_organizing_params
      params.require(:item_organizing).permit(:item, :color, :season)
    end
end
