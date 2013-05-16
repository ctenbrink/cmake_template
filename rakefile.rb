require 'rake'
require 'rake/clean'
require 'fileutils'

$project_name = "enter_a_project_name_here"

CLOBBER.include('bin/**')
CLOBBER.include('bin')

def platform
  if RUBY_PLATFORM =~ /darwin/
    platform = :osx
  else
    raise 'Unhandled platform'
  end
end

def binary_directory
  case platform
  when :osx then 'bin/osx'
  end
end

def command_line_for_build
  case platform
  when :osx then "xcodebuild -project #{$project_name}.xcodeproj"
  end
end

def cmake_generator
  case platform
  when :osx then 'Xcode'
  end
end

desc "Run cmake to build the appropriate project file"
task :cmake do
  bin_dir = binary_directory
  mkdir_p bin_dir unless(File.exists? bin_dir) 
  Dir.chdir(bin_dir) do
    sh "cmake -G #{cmake_generator} ../.."
  end
end

desc "Build the project"
task :build do
  bin_dir = binary_directory
  Dir.chdir(bin_dir) do
    sh "#{command_line_for_build}"
  end
end
