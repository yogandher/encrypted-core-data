Pod::Spec.new do |s|
    s.name          = 'EncryptedCoreData'
    s.version       = '3.1'
    s.license       = 'Apache-2.0'
  
    s.summary       = 'iOS Core Data encrypted SQLite store using SQLCipher'
    s.description   = %[
        Provides a Core Data store that encrypts all data that is persisted. Besides the initial setup, the usage is exactly the same as Core Data and can be used in existing projects that use Core Data.
    ]
    s.homepage      = 'https://github.com/yogandher/encrypted-core-data/'
    s.authors       = {
        'MITRE' => 'imas-proj-list@lists.mitre.org'
    }
  
    s.source        = { :git => 'https://github.com/yogandher/encrypted-core-data.git' }
  
    s.frameworks    = ['CoreData', 'Security']
    s.requires_arc  = true

    s.ios.deployment_target = '8.0'
    s.osx.deployment_target = '10.10'
    s.source_files  = 'Incremental Store/**/*.{h,m}'
    s.public_header_files   = 'Incremental Store/EncryptedStore.h'
  
    s.dependency 'SQLCipher', '~> 4.5.5'
  
    s.xcconfig      = {
        'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC -DSQLCIPHER_CRYPTO_CC'
    }
end
