Pod::Spec.new do |s|

  s.name         = "StrawServiceToast"
  s.version      = "0.1.2"
  s.summary      = "Toast service of Straw iOS"

  s.description  = <<-DESC
                   Toast service of Straw iOS

                   This Straw Service class provides the ability to show Toast (as in Android) UI component
                   on the screen.
                   DESC

  s.homepage     = "https://github.com/strawjs/straw-ios-service-toast"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Yoshiya Hinosawa" => "stibium121@gmail.com" }
  s.social_media_url   = "https://twitter.com/kt3k"

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/strawjs/straw-ios-service-toast.git", :tag => "v0.1.2" }

  s.source_files  = "StrawServiceToast/**/*.{h,m}"

  s.dependency "Straw", "~> 0.5.0"

  s.requires_arc = true

end
