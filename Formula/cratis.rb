class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.5.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.5.0/cratis-3.5.0-osx-arm64.tar.gz"
      sha256 "2a1ebfb0e6f72914b44ca7c7046f7b1ee350531e3eac456cc6c3bc47479b3e20"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.5.0/cratis-3.5.0-osx-x64.tar.gz"
      sha256 "8702e148a4a7f09551febc35d94127fb2c5700089dc470a0b7098e1bf9381f40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.5.0/cratis-3.5.0-linux-arm64.tar.gz"
      sha256 "66056556b7ea078c06dfe42cacbe64dd5ccbb7cfbcaa7f783c96130fae8dafa9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.5.0/cratis-3.5.0-linux-x64.tar.gz"
      sha256 "1181161875f7ea74fe773096ad3f33e07a68e69fd7147665554fab9f3c3364ed"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
