require 'rails_helper'

RSpec.describe "All markets endpoint" do
  it 'returns all markets' do
    market_1 = create(:market)
    market_2 = create(:market)
    market_3 = create(:market)

    get '/api/v0/markets'

    markets = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(response).to be_successful

    expect(markets[0][:attributes]).to have_key(:fmid)
    expect(markets[0][:attributes][:fmid]).to be_a(Integer)
    
    expect(markets[0][:attributes]).to have_key(:name)
    expect(markets[0][:attributes][:name]).to be_a(String)
    
    expect(markets[0][:attributes]).to have_key(:street)
    expect(markets[0][:attributes][:street]).to be_a(String)
    
    expect(markets[0][:attributes]).to have_key(:city)
    expect(markets[0][:attributes][:city]).to be_a(String)
    
    expect(markets[0][:attributes]).to have_key(:county)
    expect(markets[0][:attributes][:county]).to be_a(String)
    
    expect(markets[0][:attributes]).to have_key(:state)
    expect(markets[0][:attributes][:state]).to be_a(String)
    
    expect(markets[0][:attributes]).to have_key(:zip)
    expect(markets[0][:attributes][:fmid]).to be_a(Integer)
  end
end