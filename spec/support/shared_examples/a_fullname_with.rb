shared_examples_for "a fullname with" do |names|
  let(:fullname) {
    fullname  = []
    fullname << subject.firstname     if names.include? :firstname
    fullname << subject.middlename    if names.include? :middlename
    fullname << subject.lastname      if names.include? :lastname
    fullname  = fullname.join(' ')
    fullname
  }

  it "combines available names" do
    expect(subject.fullname).to eql fullname
  end
end