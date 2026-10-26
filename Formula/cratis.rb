class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.103.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.3/cratis-3.103.3-osx-arm64.tar.gz"
      sha256 "d964274cd955de973cb64f6d9091a16699b9edf9a3eaab80d9b892b7ccab315d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.3/cratis-3.103.3-osx-x64.tar.gz"
      sha256 "52a1f1a54291dfc969eec3cfda222e797ace38dc5f5044adc07cf60cd94733b6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.103.3/cratis-3.103.3-linux-arm64.tar.gz"
      sha256 "ed0a9b3007124b9a86640adf52a5b5a426db9abc8cf34d64202cc3e692c5937d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.103.3/cratis-3.103.3-linux-x64.tar.gz"
      sha256 "fe5f88e70069c1435bbf719a2ea38b5d84738c79f3f34eaafa3774bb0589a3e3"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
