class Pdf
  def initialize(pdf_params)
    @pdf_params = pdf_params
  end

  def title
    @pdf_params[:title]
  end

  private

  attr_accessor :pdf_params
end