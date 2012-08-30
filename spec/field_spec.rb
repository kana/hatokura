require 'spec_helper'

module Hatokura
  describe Field do
    zone = described_class.new(Player.new())

    it_behaves_like 'public zone', zone
    it_behaves_like 'owned zone', zone

    context 'by default' do
      it_behaves_like 'empty zone', zone
    end
  end
end
