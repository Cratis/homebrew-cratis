class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.39.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.39.0/cratis-3.39.0-osx-arm64.tar.gz"
      sha256 "59d92677e97054b64d69cb38045db0b7d17c1dc62d7a2b5b3f7bf11d5bb9c6bd"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.39.0/cratis-3.39.0-osx-x64.tar.gz"
      sha256 "bf51c374a468cf5a7f1289d89e0f8d186cf73812907d9eeda27081f98c2cc9de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.39.0/cratis-3.39.0-linux-arm64.tar.gz"
      sha256 "ddbd40028915ff6fbf0172184088f7e8cf3056f159ddb9fb8b4530d59ffd5634"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.39.0/cratis-3.39.0-linux-x64.tar.gz"
      sha256 "18447bf29dbe8a577f2e889ad06616123f27aac8537e0c254df3f4f898ee1360"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
