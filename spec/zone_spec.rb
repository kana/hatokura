require 'spec_helper'

module Hatokura
  describe Zone do
    z = described_class
    any_owner = nil
    any_publicp = false

    it_behaves_like 'public zone', z.new(any_owner, true)
    it_behaves_like 'private zone', z.new(any_owner, false)
    it_behaves_like 'owned zone', z.new(Player.new(), any_publicp)
    it_behaves_like 'shared zone', z.new(nil, any_publicp)

    context 'by default' do
      it_behaves_like 'empty zone', z.new(any_owner, any_publicp)
    end
  end
end
