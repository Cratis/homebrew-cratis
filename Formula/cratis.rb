class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.26.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.26.0/cratis-3.26.0-osx-arm64.tar.gz"
      sha256 "4e3659383bf1605e318b0fd78176a07f37d11fb3a8933f5d4d4327636ec9cb81"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.26.0/cratis-3.26.0-osx-x64.tar.gz"
      sha256 "47d949f2168ec1c487946745342bef16f2fdefded0ce49a88b9d590a0555af99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.26.0/cratis-3.26.0-linux-arm64.tar.gz"
      sha256 "0581c8a823a9e4aba797a03831b46df035c9afeebf3378ff3d9acdb7b1a1bb70"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.26.0/cratis-3.26.0-linux-x64.tar.gz"
      sha256 "c239267f64dcebce9e47484386265cb5ef676f59e00791fdf342047cb1faf065"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
