# グループ全体をskipする
xdescribe '四則演算' do
  it '1 + 1 は 2 になること' do
    expect(1 + 1).to eq 2
  end
  it '10 - 1 は 9 になること' do
    expect(10 - 1).to eq 9
  end
end

# グループ全体をskipする
xcontext '管理者の場合' do
  it '社員情報を編集できる' do
    # ...
  end
  it '社員情報を削除できる' do
    # ...
  end
end
