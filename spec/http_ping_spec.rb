RSpec.describe HttpPing do
  it "has a version number" do
    expect(HttpPing::VERSION).not_to be nil
  end
 it "able to ping" do
    expect(HttpPing::H_PING.new("www.google.com").ping?).to eql(true)
  end
end
