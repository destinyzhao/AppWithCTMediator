platform:ios,'9.0'
use_frameworks!
target 'AppWithCTMediator' do
    pod 'HomeModule',:git => 'https://git.coding.net/Destinyzhao/HomeModule.git'
    pod 'SettingModule',:git => 'https://git.coding.net/Destinyzhao/SettingModule.git'
end

post_install do |installer|
            installer.pods_project.targets.each do |target|
            target.build_configurations.each do |config|
            config.build_settings['ENABLE_BITCODE'] = 'NO'
        end
    end
end




