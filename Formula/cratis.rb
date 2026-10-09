class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.5/cratis-3.40.5-osx-arm64.tar.gz"
      sha256 "c708007d2e4b2268a30bcb21bbe0c99160feebdd5a60907d18166305bfa68907"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.5/cratis-3.40.5-osx-x64.tar.gz"
      sha256 "e4ff47302d81e6f7fa321694dc8d0eedc31de9496ac16bd424459b06e44d2ab7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.5/cratis-3.40.5-linux-arm64.tar.gz"
      sha256 "a7a617a90048c8116c9a4157179f3f76ffffc79ebf1402cb7501256ced2a2ea7"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.5/cratis-3.40.5-linux-x64.tar.gz"
      sha256 "1896c026c1a5b63d2e348ab76193ef2d967713c0ecbea7b39f97e4dd782420fe"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
