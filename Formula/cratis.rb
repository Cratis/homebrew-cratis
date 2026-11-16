class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.139.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.139.0/cratis-3.139.0-osx-arm64.tar.gz"
      sha256 "485ae509731cd6cce53de4e8b4cf4ef6798fdd72f917561bcb790619643c532c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.139.0/cratis-3.139.0-osx-x64.tar.gz"
      sha256 "df5ac7897e3273fc8cfba65caec5ad02e57420a22825d746e050dda5324ca2bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.139.0/cratis-3.139.0-linux-arm64.tar.gz"
      sha256 "f5dd44176c2ed639bf01c749f69cde09c7a921e31abec4a9d915f25cd199d077"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.139.0/cratis-3.139.0-linux-x64.tar.gz"
      sha256 "0578e91ee5de55a62d9155748bb9cae06cff02c25488c2fef33d53b632355860"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
