class ResultsController < ApplicationController
  def index
  end

  def new
  end

  def create
    pdf = Pdf.new(pdf_params).generate_pdf
    send_data(pdf, filename: 'test.pdf', type: 'application/pdf', disposition: 'inline')
  end

  private

  def pdf_params
    params.permit(:title)
  end
end
