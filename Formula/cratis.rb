class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.40.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.0/cratis-3.40.0-osx-arm64.tar.gz"
      sha256 "f6dbe0a36abfe9f7564bdf4946dee46c06b65728458992497ed554fb0b84390b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.0/cratis-3.40.0-osx-x64.tar.gz"
      sha256 "23600696861e8118ac5a8b9a08ced790be29718a7b950d777738f57d402ebafc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.40.0/cratis-3.40.0-linux-arm64.tar.gz"
      sha256 "285b485fb56701e77b71964cc641c50b52175403f7fb32065e32ae2f5b998c55"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.40.0/cratis-3.40.0-linux-x64.tar.gz"
      sha256 "decae170bcc49e0ff2df2e18ec8ccf895064ffbd8375d0ca991b05dbabd6ce22"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
