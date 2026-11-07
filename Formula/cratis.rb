class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.123.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.123.0/cratis-3.123.0-osx-arm64.tar.gz"
      sha256 "8bd66b8d7d35aad873793ccbf1bccca16c24b0f7df6fb817ccae116c7f80ad88"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.123.0/cratis-3.123.0-osx-x64.tar.gz"
      sha256 "51e850dc986c36315ef191f3e2a7e94116d0846c8a0d3ee64776c66d040bd9d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.123.0/cratis-3.123.0-linux-arm64.tar.gz"
      sha256 "641879b558cb490d47f34311a8430ca48a1af6d0f6312abfda8a5fb1f8c9284c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.123.0/cratis-3.123.0-linux-x64.tar.gz"
      sha256 "719bfcfeb380472d93545b0f169d9e53ebe8a4bf8e29dfab0bf5b8c5f430c25e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
