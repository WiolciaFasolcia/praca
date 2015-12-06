class DziedzinasController < ApplicationController
  before_action :set_dziedzina, only: [:show, :edit, :update, :destroy]

  # GET /dziedzinas
  # GET /dziedzinas.json
  def index
    @dziedzinas = Dziedzina.all
  end

  # GET /dziedzinas/1
  # GET /dziedzinas/1.json
  def show
  end

  # GET /dziedzinas/new
  def new
    @dziedzina = Dziedzina.new
  end

  # GET /dziedzinas/1/edit
  def edit
  end

  # POST /dziedzinas
  # POST /dziedzinas.json
  def create
    @dziedzina = Dziedzina.new(dziedzina_params)

    respond_to do |format|
      if @dziedzina.save
        format.html { redirect_to @dziedzina, notice: 'Dziedzina was successfully created.' }
        format.json { render :show, status: :created, location: @dziedzina }
      else
        format.html { render :new }
        format.json { render json: @dziedzina.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dziedzinas/1
  # PATCH/PUT /dziedzinas/1.json
  def update
    respond_to do |format|
      if @dziedzina.update(dziedzina_params)
        format.html { redirect_to @dziedzina, notice: 'Dziedzina was successfully updated.' }
        format.json { render :show, status: :ok, location: @dziedzina }
      else
        format.html { render :edit }
        format.json { render json: @dziedzina.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dziedzinas/1
  # DELETE /dziedzinas/1.json
  def destroy
    @dziedzina.destroy
    respond_to do |format|
      format.html { redirect_to dziedzinas_url, notice: 'Dziedzina was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dziedzina
      @dziedzina = Dziedzina.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dziedzina_params
      params.require(:dziedzina).permit(:name)
    end
end
