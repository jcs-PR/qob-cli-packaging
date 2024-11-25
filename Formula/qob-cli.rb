class QobCli < Formula
  desc "CLI for building, running, testing, and managing your Emacs Lisp dependencies"
  version "0.1.0"
  homepage "https://cl-qob.github.io/"
  license "MIT"

  url "https://github.com/cl-qob/cli/releases/download/#{version}/qob_#{version}_macos-x64.tar.gz"
  sha256 "9826a4d7f603c0c01692e97950282a2e4e7d12f3d1ba2067ad971cceff4f9aed"

  def install
    #system "tar", "-xvf", cached_download
    bin.install_symlink Dir["*"]
  end
end
