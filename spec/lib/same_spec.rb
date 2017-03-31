# it, specify, exampleはすべて同じ（エイリアス）
describe "Same" do
  it '1 + 1 は 2 になる' do
    expect(1 + 1).to eq 2
  end
  
  specify '1 + 1 は 2 になる' do
    expect(1 + 1).to eq 2
  end
  
  example '1 + 1 は 2 になる' do
    expect(1 + 1).to eq 2
  end
end
