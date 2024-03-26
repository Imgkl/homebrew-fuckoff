class Fuckoff < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff/archive/refs/tags/v1.1.tar.gz"
  sha256 "bc5c56f2f673fd16a3d9ce19eeb155f6a853846b03fa18f82c14ab73e15d4d53"
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
