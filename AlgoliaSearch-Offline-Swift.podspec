Pod::Spec.new do |s|
    s.name = 'AlgoliaSearch-Offline-Swift'
    s.module_name = 'AlgoliaSearch'
    s.version = '3.3'
    s.license = 'MIT'
    s.summary = 'Algolia Search API Client for iOS & OS X written in Swift.'
    s.homepage = 'https://github.com/algolia/algoliasearch-client-swift'
    s.author   = { 'Algolia' => 'contact@algolia.com' }
    s.source = { :git => 'https://github.com/algolia/algoliasearch-client-swift.git', :tag => s.version }

    s.ios.deployment_target = '8.0'

    s.dependency 'AlgoliaSearchOfflineCore-iOS', '0.1'

    # Activate Core-dependent code.
    # WARNING: Specifying the preprocessor macro is not enough; it must be added to Swift flags as well.
    s.pod_target_xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'ALGOLIA_SDK=1',
        'OTHER_SWIFT_FLAGS' => '-DALGOLIA_SDK'
    }
    s.source_files = [
        'Source/*.swift',
        'Source/Helpers/*.swift',
        'Source/Offline/*.swift'
    ]
end
