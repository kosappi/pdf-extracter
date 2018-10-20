class ResultsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @pdf = Pdf.new(pdf_params)
  end

  private

  def pdf_params
    params.permit(:title)
  end
end
