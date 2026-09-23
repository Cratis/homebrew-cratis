class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.16.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.16.0/cratis-3.16.0-osx-arm64.tar.gz"
      sha256 "18da045125f51a656fc31a3a49e02d12efe926f9b9fe3e0f50d96c63b6fbe408"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.16.0/cratis-3.16.0-osx-x64.tar.gz"
      sha256 "8d66eee51647bdfc51ac47e6c2eabcff51c6320e8c06db589223341520fd11f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.16.0/cratis-3.16.0-linux-arm64.tar.gz"
      sha256 "4d0b03e7a8688318b5e55cb396605f384758a610895dac805b8d4c5d6b6763e6"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.16.0/cratis-3.16.0-linux-x64.tar.gz"
      sha256 "e8c6d751b0b4bf2300b67217b5d4de16950b0cca74baf4fe1ef196f22e94a286"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
