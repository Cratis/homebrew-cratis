class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.0/cratis-3.103.0-osx-arm64.tar.gz"
      sha256 "7b16bf70e1f69e8f7c055b0a4ca4762ef4ae7a22df2123594c8c380a4bd857c2"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.0/cratis-3.103.0-osx-x64.tar.gz"
      sha256 "4777b7c26afdbd6d9ebeaec3ab932ad48cd1c0de0a3d4f2b9f13a5e611a3d733"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.0/cratis-3.103.0-linux-arm64.tar.gz"
      sha256 "89a3b6b1d2669e61995c33f106fc3244f3ad8441f3434e478250875a395e1e4e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.0/cratis-3.103.0-linux-x64.tar.gz"
      sha256 "52895f9a1fe1990f5fb52efa3d18b3b6245eda0555397321a0cbbd66cd6cf743"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
