cask 'coteditor' do
  if MacOS.release <= :snow_leopard
    version '1.3.1'
    sha256 '5c871bd9de30fc3c76fc66acb4ea258d4d3762ae341181d65a7ef1f8de4751c5'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}_For10.4.dmg"
  elsif MacOS.release <= :lion
    version '1.5.4'
    sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  else
    version '2.3.4'
    sha256 '837cadeb4ac7d444e3eedc0894a5b2f174b9a704b0aa532a76ac807579faac3b'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  end

  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: '2ee73f85c1ca53a0a4df984e4a65b274a82417b9aa14ac4f63a4811b00b13dec'
  name 'CotEditor'
  homepage 'https://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
