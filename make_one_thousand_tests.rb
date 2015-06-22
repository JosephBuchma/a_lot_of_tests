
tests = ''
1000.times do |i|
  tests += "it 'test something #{i.to_s}' do\n  expect(true).to be_truthy\nend \n"
end

buffer = "require 'rspec'\n\ndescribe 'one thousand tests' do\n #{tests} \nend\n"

10.times do |i|
  f = File.new("spec/one_thousand_tests#{i.to_s}_spec.rb", 'w')
  f.write(buffer)
  f.close()
end
