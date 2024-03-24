class Fuckoff < Formula
  desc "A CLI tool to manage and clear Zsh history"
  homepage "https://github.com/Imgkl/fuckoff"
  url "https://github.com/Imgkl/fuckoff-cli/archive/v1.0.0.tar.gz"
  sha256 "883a25aec270d469bd310b68ab8a06e94dcec3d9a90502dd7c6d08b3c11db2e7"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/fuckoff", "--version"
  end
end
