require 'rails_helper'

RSpec.describe "converters/edit", type: :view do
  before(:each) do
    @converter = assign(:converter, Converter.create!(
      :fromCurrency => 1.5,
      :toCurrency => 1.5
    ))
  end

  it "renders the edit converter form" do
    render

    assert_select "form[action=?][method=?]", converter_path(@converter), "post" do

      assert_select "input#converter_fromCurrency[name=?]", "converter[fromCurrency]"

      assert_select "input#converter_toCurrency[name=?]", "converter[toCurrency]"
    end
  end
end
