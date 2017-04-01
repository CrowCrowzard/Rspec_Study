describe 'raise_error' do
  it '0で除算する時のエラー' do
    expect{ 1 / 0 }.to raise_error ZeroDivisionError
  end
end
