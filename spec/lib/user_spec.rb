require "user"

=begin
describe User do
  describe '#greet' do
    it '12歳以下の場合、ひらがなで答えること' do
      user = User.new(name: 'たろう', age: 12)
      expect(user.greet).to eq 'ぼくはたろうだよ'
    end

    it '13歳以上の場合、感じで答えること' do
      user = User.new(name: 'たろう', age: 13)
      expect(user.greet).to eq '僕はたろうです'
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    context '12歳以下の場合' do
      it 'ひらがなで答えること' do
        user = User.new(name: 'たろう', age: 12)
        expect(user.greet).to eq 'ぼくはたろうだよ'
      end
    end

    context '13歳以上の場合' do
      it '漢字で答えること' do
        user = User.new(name: 'たろう', age: 13)
        expect(user.greet).to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    before do
      @params = { name: 'たろう' }
    end

    context '12歳以下の場合' do
      it 'ひらがなで答えること' do
        user = User.new(@params.merge(age: 12))
        expect(user.greet).to eq 'ぼくはたろうだよ'
      end
    end

    context '13歳以上の場合' do
      it '漢字で答えること' do
        user = User.new(@params.merge(age: 13))
        expect(user.greet).to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    before do
      @params = { name: 'たろう' }
    end
    context '12歳以下の場合' do
      before do
        @params.merge!(age: 12)
      end

      it 'ひらがなで答えること' do
        user = User.new(@params)
        expect(user.greet).to eq 'ぼくはたろうだよ'
      end
    end

    context '13歳以上の場合' do
      before do
        @params.merge!(age: 13)
      end

      it '漢字で答えること' do
        user = User.new(@params)
        expect(user.greet).to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:params) { { name: 'たろう' } }
    context '12歳以下の場合' do
      before do
        params.merge!(age: 12)
      end

      it 'ひらがなで答えること' do
        user = User.new(params)
        expect(user.greet).to eq 'ぼくはたろうだよ'
      end
    end

    context '13歳以上の場合' do
      before do
        params.merge!(age: 13)
      end

      it '漢字で答えること' do
        user = User.new(params)
        expect(user.greet).to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう' } }
    context '12歳以下の場合' do
      before do
        params.merge!(age: 12)
      end

      it 'ひらがなで答えること' do
        expect(user.greet).to eq 'ぼくはたろうだよ'
      end
    end

    context '13歳以上の場合' do
      before do
        params.merge!(age: 13)
      end

      it '漢字で答えること' do
        expect(user.greet).to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう', age: age } }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it 'ひらがなで答えること' do
        expect(user.greet).to eq 'ぼくはたろうだよ'
      end
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it '漢字で答えること' do
        expect(user.greet).to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう', age: age } }
    subject { user.greet }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it 'ひらがなで答えること' do
        is_expected.to eq 'ぼくはたろうだよ'
      end
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it '漢字で答えること' do
        is_expected.to eq '僕はたろうです'
      end
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(params) }
    let(:params) { { name: 'たろう', age: age } }
    subject { user.greet }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it { is_expected.to eq '僕はたろうです' }
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it { is_expected.to eq '僕はたろうです' }
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }

    context '0歳の場合' do
      let(:age) { 0 }
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '12歳の場合' do
      let(:age) { 12 }
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end

    context '13歳の場合' do
      let(:age) { 13 }
      it { is_expected.to eq '僕はたろうです' }
    end
    context '100歳の場合' do
      let(:age) { 100 }
      it { is_expected.to eq '僕はたろうです' }
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }

    shared_examples '子供のあいさつ' do
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '0歳の場合' do
      let(:age) { 0 }
      it_behaves_like '子供のあいさつ'
    end
    context '12歳の場合' do
      let(:age) { 12 }
      it_behaves_like '子供のあいさつ'
    end

    shared_examples '大人のあいさつ' do
      it { is_expected.to eq '僕はたろうです' }
    end
    context '13歳の場合' do
      let(:age) { 13 }
      it_behaves_like '大人のあいさつ'
    end
    context '100歳の場合' do
      let(:age) { 100 }
      it_behaves_like '大人のあいさつ'
    end
  end
end
=end

=begin
describe User do
  describe '#greet' do
    let(:user) { User.new(name: 'たろう', age: age) }
    subject { user.greet }
    context '12歳以下の場合' do
      let(:age) { 12 }
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '13歳以上の場合' do
      let(:age) { 13 }
      it { is_expected.to eq '僕はたろうです' }
    end

    describe '#child?' do
      let(:user) { User.new(name: 'たろう', age: age) }
      subject { user.child? }
      context '12歳以下の場合' do
        let(:age) { 12 }
        it { is_expected.to eq true }
      end
      context '13歳以上の場合' do
        let(:age) { 13 }
        it { is_expected.to eq false }
      end
    end
  end
end
=end

describe User do
  let(:user) { User.new(name: 'たろう', age: age) }
  shared_context '12歳の場合' do
    let(:age) { 12 }
  end
  shared_context '13歳の場合' do
    let(:age) { 13 }
  end

  describe '#greet' do
    subject { user.greet }
    context '12歳以下の場合' do
      include_context '12歳の場合'
      it { is_expected.to eq 'ぼくはたろうだよ' }
    end
    context '13歳以上の場合' do
      shared_context '12歳の場合'
      it { is_expected.to eq '僕はたろうです' }
    end

    describe '#child?' do
      let(:user) { User.new(name: 'たろう', age: age) }
      subject { user.child? }
      context '12歳以下の場合' do
        shared_context '12歳の場合'
        it { is_expected.to eq true }
      end
      context '13歳以上の場合' do
        shared_context '13歳の場合'
        it { is_expected.to eq false }
      end
    end
  end
end
