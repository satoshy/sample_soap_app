require 'rails_helper'

RSpec.describe "converters/new", type: :view do
  before(:each) do
    assign(:converter, Converter.new(
      :fromCurrency => 1.5,
      :toCurrency => 1.5
    ))
  end

  it "renders new converter form" do
    render

    assert_select "form[action=?][method=?]", converters_path, "post" do

      assert_select "input#converter_fromCurrency[name=?]", "converter[fromCurrency]"

      assert_select "input#converter_toCurrency[name=?]", "converter[toCurrency]"
    end
  end
end
