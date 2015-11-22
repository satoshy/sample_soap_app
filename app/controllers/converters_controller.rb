class ConvertersController < ApplicationController
  before_action :set_converter, only: [:show, :edit, :update, :destroy]

  def index
    @converters = Converter.all
  end

  def show
  end

  def new
    @converter = Converter.new
  end

  def edit
  end

  def create
    @converter = Converter.new(converter_params)

    respond_to do |format|
      if @converter.save
        format.html { redirect_to @converter, notice: 'Converter was successfully created.' }
        format.json { render :show, status: :created, location: @converter }
      else
        format.html { render :new }
        format.json { render json: @converter.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @converter.update(converter_params)
        format.html { redirect_to @converter, notice: 'Converter was successfully updated.' }
        format.json { render :show, status: :ok, location: @converter }
      else
        format.html { render :edit }
        format.json { render json: @converter.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @converter.destroy
    respond_to do |format|
      format.html { redirect_to converters_url, notice: 'Converter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_converter
      @converter = Converter.find(params[:id])
    end

    def converter_params
      params.require(:converter).permit(:fromCurrency, :toCurrency)
    end
end
