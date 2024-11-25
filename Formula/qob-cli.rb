cask "qob-cli" do
  version "0.1.0"
  sha256 "9826a4d7f603c0c01692e97950282a2e4e7d12f3d1ba2067ad971cceff4f9aed"

  url "https://github.com/cl-qob/cli/releases/download/#{version}/qob_#{version}_macos-x64.tar.gz"
  name "Qob CLI"
  desc "CLI for building, running, testing, and managing your Common Lisp dependencies"
  homepage "https://cl-qob.github.io/"
  license "MIT"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "qob"

  # No zap stanza required
end
