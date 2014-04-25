shared_examples_for "an invalid user" do
  it { expect(subject).to be_invalid }
  #it { expect(subject).to have_errors }
end