require 'rails_helper'

describe CompareVersions::CompareAttributes do
  describe '#compare' do
    context 'when the version has no changes' do
      let(:object) { { hp: 1000 } }
      let(:object_compared) { { hp: 1000 } }
      let(:subject) do
        described_class.new(
          attributes: object.to_hash.keys,
          object: object
        )
      end

      it 'returns attributes buffed' do
        expect(subject.compare(object_compared)).to(
          eq([{ actual: 1000, previous: 1000, attribute: :hp, status: :no_changes }]))
      end
    end

    context 'when the version is buffed' do
      let(:object) { { hp: 1000 } }
      let(:object_compared) { { hp: 900 } }
      let(:subject) do
        described_class.new(
          attributes: object.to_hash.keys,
          object: object
        )
      end

      it 'returns attributes buffed' do
        expect(subject.compare(object_compared)).to(
          eq([{ actual: 1000, previous: 900, attribute: :hp, status: :buff }]))
      end
    end

    context 'when the version is nerfed' do
      let(:object) { { hp: 1000 } }
      let(:object_compared) { { hp: 1100 } }
      let(:subject) do
        described_class.new(
          attributes: object.to_hash.keys,
          object: object
        )
      end

      it 'returns attributes buffed' do
        expect(subject.compare(object_compared)).to(
          eq([{ actual: 1000, previous: 1100, attribute: :hp, status: :nerf }]))
      end
    end

    context 'when has multiple attributes' do
      let(:object) { { hp: 1000, mp: 1000, armor: 200 } }
      let(:object_compared) { { hp: 900, mp: 1100, armor: 200 } }
      let(:subject) do
        described_class.new(
          attributes: object.to_hash.keys,
          object: object
        )
      end

      it 'returns attributes and correct status' do
        expect(subject.compare(object_compared)).to(
          eq([
            { actual: 1000, previous: 900, attribute: :hp, status: :buff },
            { actual: 1000, previous: 1100, attribute: :mp, status: :nerf },
            { actual: 200, previous: 200, attribute: :armor, status: :no_changes }
          ]))
      end
    end
  end
end
