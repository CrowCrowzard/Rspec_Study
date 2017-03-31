describe '何らかの理由で実行したくないクラス' do
  xit '実行したくないテスト' do
    expect(1 + 2).to eq 3

    expect(foo).to eq bar
  end
end
