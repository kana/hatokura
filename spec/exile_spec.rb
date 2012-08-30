require 'spec_helper'

module Hatokura
  describe Exile do
    zone = described_class.new()

    it_behaves_like 'public zone', zone
    it_behaves_like 'shared zone', zone

    context 'by default' do
      it_behaves_like 'empty zone', zone
    end
  end
end
