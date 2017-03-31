describe '繊細なクラス' do
  it '繊細なテスト' do
    expect(1 + 2).to eq 3
    
    pending 'この先はなぜかテストが失敗するので後で直す'
    # パスしないエクスペくテーション(実行される)
    expect(foo).to eq bar
  end
end
