Pod::Spec.new do |s|
  s.name         = "Canvas"
  s.version      = "0.1.2"
  s.summary      = "Animate in Xcode without code"
  s.description  = <<-DESC
                   Simplify iOS Development with zero coding animations and Storyboard components
                   DESC
  s.homepage     = "http://canvaspod.io"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { "Meng To" => "shadownessguy@gmail.com", "James Tang" => "j@jamztang.com" }
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/CanvasPod/Canvas.git", :tag => s.version.to_s }
  s.source_files  = 'CanvasLibrary/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
  s.requires_arc = true
end
