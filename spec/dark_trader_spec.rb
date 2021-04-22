#dark_trader_spec

require_relative '../lib/dark_trader'

describe "the scrapping function" do
    it "should return a string" do
        expect(scrapping).not_to be_nil
    end
    #it "should return an hash" do
        #expect(scrapping).to have_key("BTC")
    #end
end

