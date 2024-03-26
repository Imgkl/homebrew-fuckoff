class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "04f36a709a71b4bbd2a65c4e8df17eab2f1837ebc759f31960b336cc6fe8fabe"
  depends_on "python@3.9"

  def install
    venv = virtualenv_create(libexec, "python3.9", system_site_packages: true)
    venv.pip_install "questionary==2.0.1"
    venv.pip_install "prompt-toolkit==3.0.36"
    venv.pip_install_and_link buildpath
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
