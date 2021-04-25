require_relative '../lib/crypto'

describe "mad scrapper" do
  # it "scraps currencies" do
  #   expect
  # end

  # it "scraps prices" do
  #   expect
  # end

  it "gives result" do
    expect(deputy_scrapper).not_to be_nil
  end
end