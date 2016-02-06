cask 'lightzone' do
  if MacOS.release <= :mountain_lion
    version '4.1.3'
    sha256 'e4bcd9fe2b2224337963ae90047497836879ed2bd64349a200de70c4b5df454a'
    url "https://spideroak.com/share/NN2GO5ZQGMYTM/lightzone/Users/masahiro/Public/LightZone-mac-10.7/LightZone-#{version}-SnowLeopard.dmg"
  else
    version '4.1.5'
    sha256 '0fab140342bd16b3d3a2b6dec6773cf19c55e0b93bdb7a2f169059d14c033c95'
    url "https://spideroak.com/share/NN2GO5ZQGMYTM/lightzone/Users/masahiro/Public/LightZone-mac-10.9/LightZone-#{version}-Mavericks.dmg"
  end

  # spideroak.com is the official download host per the vendor homepage
  name 'LightZone'
  homepage 'http://lightzoneproject.org/'

  # LightZone includes code with multiple licenses
  license :oss

  app 'LightZone.app'
end
