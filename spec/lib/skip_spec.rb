describe '何らかの理由で実行したくないクラス' do
  it '実行したくないテスト' do
    expect(1 + 2).to eq 3

    skip 'とりあえずここで実行を保留'
    expect(foo).to eq bar
  end
end
