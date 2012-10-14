# A sample Guardfile
# More info at https://github.com/guard/guard#readme
guard 'minitest' do
  watch(%r|^test/(.*)\/(.*)_test\.rb|)
  watch(%r|^lib/(.*)([^/]+)\.rb|)     { |m| "test/#{m[1]}/#{m[2]}_test.rb" }
  watch(%r|^test/minitest_helper\.rb|)    { "test" }
  
  watch(%r|^app/controllers/(.*)\.rb|) { |m| "test/controllers/#{m[1]}_test.rb" }
  watch(%r|^app/models/(.*)\.rb|)      { |m| "test/models/#{m[1]}_test.rb" }
end
