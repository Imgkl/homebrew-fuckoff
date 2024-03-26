class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.2.tar.gz"
  sha256 "9ef2e4931a504f87a4e173d54b57039015823f2f96292edf4fe65db55013d482"
  depends_on "python@3.9"

  def install
    venv = virtualenv_create(libexec, "python3.9", system_site_packages: true)
    venv.pip_install "questionary==2.0.1"
    venv.pip_install "prompt-toolkit==3.0.36"
    venv.pip_install "wcwidth==0.2.13"
    venv.pip_install_and_link buildpath
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
