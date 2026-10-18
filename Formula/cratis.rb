class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.82.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.82.0/cratis-3.82.0-osx-arm64.tar.gz"
      sha256 "3a5c69d1cc6cfbf0e25e0dd13b2044ebe449a8af95320bdab806d4af2e4fc297"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.82.0/cratis-3.82.0-osx-x64.tar.gz"
      sha256 "37404ca55e65900ce80aefef8a8f1b06fa1dd1e6a823b624900fbb1f73e94813"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.82.0/cratis-3.82.0-linux-arm64.tar.gz"
      sha256 "bb43de53ad6f15c56462a8a2b81bd28274819a1069fd05dbaad271ae577b164b"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.82.0/cratis-3.82.0-linux-x64.tar.gz"
      sha256 "116ddb1df5709731b73e156a6e139379c9264edf433937bd9e5027f4cd6a13bd"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
