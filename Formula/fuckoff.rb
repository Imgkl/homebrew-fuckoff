class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "6158fcfe7caa8184fd8cde0671666b2b135da879ab734793d125fc1b52f352dc"
  depends_on "python@3.9"

  def install
    virtualenv_create(libexec, "python3.9")
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
