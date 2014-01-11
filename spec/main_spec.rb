require 'spec_helper'

describe Main do
  before do
    @automaton = Main.new(1, 1) # dummy values
  end
  describe '#generate_next' do
    context 'given current generation case 1' do
      before { @automaton.current_generation = "1000" }
      it 'prints the correct next generation' do
        @automaton.generate_next
        expect(@automaton.current_generation.join).to eq("1100")
      end
    end
    context 'given current generation case 2' do
      before { @automaton.current_generation = "11000101010011" }
      it 'prints the correct next generation' do
        @automaton.generate_next
        expect(@automaton.current_generation.join).to eq("00101101011100")
      end
    end
  end
end