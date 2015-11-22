json.array!(@converters) do |converter|
  json.extract! converter, :id, :fromCurrency, :toCurrency
  json.url converter_url(converter, format: :json)
end
