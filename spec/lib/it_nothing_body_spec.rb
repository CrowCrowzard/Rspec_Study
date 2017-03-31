require "user"

describe User do
  describe '#good_bye' do
    context '12歳以下の場合' do
      it 'ひらがなでさようならすること'
    end
    context '13歳以上の場合' do
      it '漢字でさようならすること'
    end
  end
end
