class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.5/cratis-3.93.5-osx-arm64.tar.gz"
      sha256 "4eb575bcac3c65b5e91ce34975579fffd0ecf795a3fea303a7585ee186a6e9fe"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.5/cratis-3.93.5-osx-x64.tar.gz"
      sha256 "471be01320995bea57a327df59efa8ff8bf7dacababc4ed7fa865da7e06105a0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.5/cratis-3.93.5-linux-arm64.tar.gz"
      sha256 "547783a2ec0df36287ab091c1888fb7d4f6ec133b1f88292e09c29be3160759a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.5/cratis-3.93.5-linux-x64.tar.gz"
      sha256 "1dc4ed94c1b3f2432ff689e4fccbfe5a9371a2ce02100d576a3733652b27c0da"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
