class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.2.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.2.1/cratis-3.2.1-osx-arm64.tar.gz"
      sha256 "240532116df11ef553b44ac9ff8bc1463875e1b022270478c298f1ebfdf5796e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.2.1/cratis-3.2.1-osx-x64.tar.gz"
      sha256 "07276cf2b816476aca005cdaa9abc3269802dd952f99cbdd4f914e4a08910059"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.2.1/cratis-3.2.1-linux-arm64.tar.gz"
      sha256 "e2bbcc155561b397b4007441f5e5b44075c01f68bb1c5ac3abf97ff228f639b8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.2.1/cratis-3.2.1-linux-x64.tar.gz"
      sha256 "9849c419665d7e57f4bb4f9e8bff1cf7582b9182872853054a54848f4d2c4bc2"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
