class Pdf
  def initialize(params)
    @pdf_params = params
  end

  def title
    pdf_params[:title]
  end

  def generate_pdf
    report = Thinreports::Report.new layout: 'app/pdf_layouts/test.tlf'
    report.start_new_page
    report.page.item(:title).value(title)
    report.generate
  end

  private

  attr_accessor :pdf_params
end