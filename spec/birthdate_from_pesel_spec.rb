require 'birthdate_from_pesel'

describe BirthdateFromPesel::Parser do
  subject { BirthdateFromPesel::Parser }

  describe '#birthdate' do
    context 'pesel start with: 810918' do
      it 'returns date 1981-09-18' do
        expect(subject.new('810918').birthdate).to eq Date.new(1981, 9, 18)
      end
    end

    context 'pesel start with: 860529' do
      it 'returns date 1986-05-29' do
        expect(subject.new('860529').birthdate).to eq Date.new(1986, 5, 29)
      end
    end

    context 'pesel start with: 218111' do
      it 'returns date 1921-01-11' do
        expect(subject.new('218111').birthdate).to eq Date.new(1821, 1, 11)
      end
    end

    context 'pesel start with: 219111' do
      it 'returns date 1921-11-11' do
        expect(subject.new('219111').birthdate).to eq Date.new(1821, 11, 11)
      end
    end

    context 'pesel start with: 002111' do
      it 'returns date 2000-01-11' do
        expect(subject.new('002111').birthdate).to eq Date.new(2000, 1, 11)
      end
    end

    context 'pesel start with: 013210' do
      it 'returns date 2001-12-10' do
        expect(subject.new('013210').birthdate).to eq Date.new(2001, 12, 10)
      end
    end

    context 'pesel start with: 014212' do
      it 'returns date 2101-02-12' do
        expect(subject.new('014212').birthdate).to eq Date.new(2101, 02, 12)
      end
    end

    context 'pesel start with: 015212' do
      it 'returns date 2101-12-12' do
        expect(subject.new('015212').birthdate).to eq Date.new(2101, 12, 12)
      end
    end

    context 'pesel start with: 256212' do
      it 'returns date 2225-02-12' do
        expect(subject.new('256212').birthdate).to eq Date.new(2225, 02, 12)
      end
    end

    context 'pesel start with: 257212' do
      it 'returns date 2225-12-12' do
        expect(subject.new('257212').birthdate).to eq Date.new(2225, 12, 12)
      end
    end
  end
end
