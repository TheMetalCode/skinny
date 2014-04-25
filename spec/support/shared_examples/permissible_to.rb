shared_examples_for "permissible to" do |action, klass|

  before { subject.permissions << [action, klass] }

  it "has permission to #{action}" do
    expect(subject).to have_permission_to(action, klass)
  end
end