describe 'be_truthy & be_falsey test' do
  it 'どちらもパスする' do
    expect(1).to be_truthy
    expect(nil).to be_falsey
  end
    
  it 'どちらも失敗する' do
    pending
    expect(1).to be true
    expect(nil).to false
  end
    
  it 'be の代わりに eq を使った場合も同様に失敗する' do
    pending
    expect(1).to eq true
    expect(nil).to eq false
  end
end
