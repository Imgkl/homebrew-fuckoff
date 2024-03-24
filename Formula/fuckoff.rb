class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "883a25aec270d469bd310b68ab8a06e94dcec3d9a90502dd7c6d08b3c11db2e7"

  depends_on "python@3.9"

  def install
    virtualenv_create(libexec, "python3.9")
    system libexec/"bin/pip", "install", "prompt_toolkit==3.0.36"
    system libexec/"bin/pip", "install", "questionary==2.0.1"
    system libexec/"bin/pip", "install", "-e", "."
    bin.install_symlink libexec/"bin/fuckoff"
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
