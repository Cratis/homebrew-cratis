class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.133.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.133.0/cratis-3.133.0-osx-arm64.tar.gz"
      sha256 "195112b43020f6819138641ded15afde905cf67409c2e7292711f2d4b65b753f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.133.0/cratis-3.133.0-osx-x64.tar.gz"
      sha256 "73fa640c69d619cb32769af7013c2311c5b80edb593d59cf5ac90bdeaa681bca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.133.0/cratis-3.133.0-linux-arm64.tar.gz"
      sha256 "0db838c65f0306b5319d345c417bc5f7e24bccca7ea181d9ca3a4b20a973f011"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.133.0/cratis-3.133.0-linux-x64.tar.gz"
      sha256 "c73ef95ed1a1b71a7112b437a4d4ed29e812d60fe5189cbaa2de539eb26a89ce"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
