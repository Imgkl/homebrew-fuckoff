class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "5e8283ce6a5dd6e110c2646c126a5a975659001eba9e977d6dffb3fa381ad01e"

  depends_on "python@3.9"

  def install
     virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
