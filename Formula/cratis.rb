class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.68.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.68.0/cratis-3.68.0-osx-arm64.tar.gz"
      sha256 "d32ffc73ce975bf7df733d3373991be6247727ee82e627b6418ff82a12270041"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.68.0/cratis-3.68.0-osx-x64.tar.gz"
      sha256 "77807e71dfe9f9639f6380e7a385cf2773b6acb8aa85ad02935b86df099f83c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.68.0/cratis-3.68.0-linux-arm64.tar.gz"
      sha256 "3c12f2c39ecb5183525dcdc0cf18d555322be73dde874cc6929269ecb1515fb7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.68.0/cratis-3.68.0-linux-x64.tar.gz"
      sha256 "c67da2378607e9f001f5c93bad237e6dced205b85018239c290629268437b0dd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
