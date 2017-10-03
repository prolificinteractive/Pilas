#
# Be sure to run `pod lib lint Pilas.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Pilas'
  s.version          = '0.1.0'
  s.summary          = 'A scrollable StackView for quick UI creation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Pilas is a custom ScrollView that contains a stackview to insert views vertically or horizontally.
                       DESC

  s.homepage         = 'https://github.com/prolificinteractive/Pilas'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jgsamudio' => 'jonathan2457@gmail.com' }
  s.source           = { :git => 'https://github.com/prolificinteractive/Pilas.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Pilas/Classes/**/*'
  
end
