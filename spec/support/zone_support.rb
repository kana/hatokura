shared_examples 'public zone' do |the_zone|
  it 'is public' do
    the_zone.public?.should be_true
  end
end

shared_examples 'private zone' do |the_zone|
  it 'is private' do
    the_zone.public?.should be_false
  end
end

shared_examples 'owned zone' do |the_zone|
  it 'is owned by a player' do
    the_zone.owner.should be_an_instance_of Hatokura::Player
    the_zone.owned?.should be_true
    the_zone.shared?.should be_false
  end
end

shared_examples 'shared zone' do |the_zone|
  it 'is shared by all players' do
    the_zone.owner.should be_nil
    the_zone.owned?.should be_false
    the_zone.shared?.should be_true
  end
end

shared_examples 'empty zone' do |the_zone|
  it 'has no card' do
    the_zone.cards.should be_empty
  end
end
