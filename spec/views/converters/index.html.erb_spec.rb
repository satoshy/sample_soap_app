require 'rails_helper'

RSpec.describe "converters/index", type: :view do
  before(:each) do
    assign(:converters, [
      Converter.create!(
        :fromCurrency => 1.5,
        :toCurrency => 1.5
      ),
      Converter.create!(
        :fromCurrency => 1.5,
        :toCurrency => 1.5
      )
    ])
  end

  it "renders a list of converters" do
    render
  end
end
