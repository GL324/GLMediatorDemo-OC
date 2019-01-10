# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'
workspace 'GLMediatorDemo-OC.xcworkspace'

def shared_pods
    pod 'CTMediator'
end

target 'GLMediatorDemo-OC' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!
  project 'GLMediatorDemo-OC.xcodeproj'
  # Pods for GLMediatorDemo-OC
  shared_pods
end

target 'GLConsultModule' do
  project 'GLConsultModule/GLConsultModule.xcodeproj'
  
  shared_pods
end

target 'GLMessageModule' do
    project 'GLMessageModule/GLMessageModule.xcodeproj'
    
    shared_pods
end

target 'GLUserModule' do
  project 'GLUserModule/GLUserModule.xcodeproj'

  shared_pods
end
