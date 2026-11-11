class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.127.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.127.0/cratis-3.127.0-osx-arm64.tar.gz"
      sha256 "aa1b8e7a350a9bc0ffef5405669f77df3c35649af4f198f5037fbdcf0b732877"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.127.0/cratis-3.127.0-osx-x64.tar.gz"
      sha256 "cc3c4b8910f1ecb8a25adf9c445f894863f354a1751828dbcc972c3f9ebb21b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.127.0/cratis-3.127.0-linux-arm64.tar.gz"
      sha256 "d2f68875c6f879a5030fd23d00e75e944776fdcb0ac4601ab8923fcf21749aee"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.127.0/cratis-3.127.0-linux-x64.tar.gz"
      sha256 "b61a8213889c91ef33b832639584bac0303db7478a602ea3ef534fa3f9249152"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
