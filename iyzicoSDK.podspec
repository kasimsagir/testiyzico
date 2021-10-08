Pod::Spec.new do |s|

  s.name         = "iyzicoSDK"
  s.version      = "1.0.0"
  s.summary      = "iyzico’nun güvenli ve kolay ödeme hizmetleri yer alır."
  s.description  = <<-DESC
		   iyzico'nun güvenli ve kolay ödeme yöntemi olan Pay with iyzico ürününü, 		   müşterilerin bakiyelerine yükleme yapmak için kullanabilecekleri Top-up 		   ürününü ve hediye puanlarını bakiyelerine alabilecekleri Cash-out 			   ürününü içermektedir
                   DESC

  s.homepage     = "https://github.com/iyzico/iyzico-podspecs"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "iyzico" => "integration@iyzico.com" } 
  s.ios.deployment_target = '12.0'
  s.ios.vendored_frameworks = 'iyzicoSDK.framework'
  s.source        = { :git => 'https://github.com/tiskender2/testiyzico.git',
			 :tag => s.version.to_s
		 	}
  s.swift_version = '5.0'
  s.exclude_files = "Classes/Exclude"

  s.requires_arc = true
  s.dependency 'Alamofire'
  s.dependency 'IQKeyboardManagerSwift'
  s.dependency 'lottie-ios'
  s.dependency 'SVGKit'
  s.dependency 'CocoaLumberjack/Core'

 s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
