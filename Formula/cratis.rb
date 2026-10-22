class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.10"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.10/cratis-3.93.10-osx-arm64.tar.gz"
      sha256 "a0fa16aa12a03f0d88500e916158eee07c3ff96e00d924eedf1e94b4ba7c4dba"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.10/cratis-3.93.10-osx-x64.tar.gz"
      sha256 "2efedbdb848d6907f240c65af6ddb87669fe8a271c8f30579a301047a7d38c94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.10/cratis-3.93.10-linux-arm64.tar.gz"
      sha256 "c034fc8b3fe953b851a1202f247d61be9108ec87f71e5564a310d034b1b721fc"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.10/cratis-3.93.10-linux-x64.tar.gz"
      sha256 "11784e0b21d366a09d9197b5dd45a9c4630baf15de7509f1287231b641d0153d"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
