class TestmodlesController < ApplicationController
  before_action :set_testmodle, only: [:show, :edit, :update, :destroy]

  # GET /testmodles
  # GET /testmodles.json
  def index
    @testmodles = Testmodle.all
  end

  # GET /testmodles/1
  # GET /testmodles/1.json
  def show
  end

  # GET /testmodles/new
  def new
    @testmodle = Testmodle.new
  end

  # GET /testmodles/1/edit
  def edit
  end

  # POST /testmodles
  # POST /testmodles.json
  def create
    @testmodle = Testmodle.new(testmodle_params)

    respond_to do |format|
      if @testmodle.save
        format.html { redirect_to @testmodle, notice: 'Testmodle was successfully created.' }
        format.json { render :show, status: :created, location: @testmodle }
      else
        format.html { render :new }
        format.json { render json: @testmodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testmodles/1
  # PATCH/PUT /testmodles/1.json
  def update
    respond_to do |format|
      if @testmodle.update(testmodle_params)
        format.html { redirect_to @testmodle, notice: 'Testmodle was successfully updated.' }
        format.json { render :show, status: :ok, location: @testmodle }
      else
        format.html { render :edit }
        format.json { render json: @testmodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testmodles/1
  # DELETE /testmodles/1.json
  def destroy
    @testmodle.destroy
    respond_to do |format|
      format.html { redirect_to testmodles_url, notice: 'Testmodle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testmodle
      @testmodle = Testmodle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testmodle_params
      params.require(:testmodle).permit(:name, :title)
    end
end
