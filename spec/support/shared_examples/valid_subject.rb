shared_examples_for "a valid user" do
  it { expect(subject).to be_valid }
  #it { expect(subject).to have_errors }
end