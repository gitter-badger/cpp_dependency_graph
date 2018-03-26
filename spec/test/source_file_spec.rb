require 'cpp_dependency_graph/source_file'

RSpec.describe SourceFile do
  it 'has a basename attribute that matches the file basename' do
    source_file = SourceFile.new('spec/test/example_project/Engine/Engine.cpp')
    expect(source_file.basename).to eq('Engine.cpp')
  end

  it 'has a path attribute that matches the path of the file' do
    source_file = SourceFile.new('spec/test/example_project/Engine/Engine.cpp')
    expect(source_file.path).to eq('spec/test/example_project/Engine/Engine.cpp')
  end

  it 'has a parent component attribute that matches the directory the file lives in' do
    source_file = SourceFile.new('spec/test/example_project/Engine/Engine.cpp')
    expect(source_file.parent_component).to eq('Engine')
  end

  it 'has an includes attribute that contains all includes except itself' do
    source_file = SourceFile.new('spec/test/example_project/Engine/Engine.cpp')
    expect(source_file.includes).to eq(['DataAccess/DA.h'])
  end

  it 'has a loc (lines of code) attribute' do
    source_file = SourceFile.new('spec/test/example_project/Engine/Engine.cpp')
    expect(source_file.loc).to be > 0
  end
end