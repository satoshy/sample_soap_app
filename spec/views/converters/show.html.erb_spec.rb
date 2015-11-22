require 'rails_helper'

RSpec.describe "converters/show", type: :view do
  before(:each) do
    @converter = assign(:converter, Converter.create!(
      :fromCurrency => 1.5,
      :toCurrency => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
