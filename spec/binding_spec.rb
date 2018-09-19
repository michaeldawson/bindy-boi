RSpec.describe Binding do
  it "understands the bindy boi commands" do
    expect(bindy).to be_a(Binding)
    expect(bindy).to respond_to(:boi)
  end
end
