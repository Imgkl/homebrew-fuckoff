class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "6158fcfe7caa8184fd8cde0671666b2b135da879ab734793d125fc1b52f352dc"
  depends_on "python@3.9"

  def install
    venv = virtualenv_create(libexec, "python3.9", system_site_packages: true)
    venv.pip_install "questionary==2.0.1"
    venv.pip_install_and_link buildpath
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
