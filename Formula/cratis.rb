class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.29.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.29.0/cratis-3.29.0-osx-arm64.tar.gz"
      sha256 "4fa25b35dc69782668567ea5d87dc056abeaf55f88ed4586d25a26a2116a5223"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.29.0/cratis-3.29.0-osx-x64.tar.gz"
      sha256 "1f744aba4c93081a1dbe419ab3088783f0b6910733a4e0b17375f567a5768b6a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.29.0/cratis-3.29.0-linux-arm64.tar.gz"
      sha256 "982bc66be1b9e12d43c7d90242494c3c45f45e0607e1c26e90cd1de9308262f4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.29.0/cratis-3.29.0-linux-x64.tar.gz"
      sha256 "2b52bd2cdde052f8f8ec3376e6adeb1762534e764e9dcbf8289d2e4e0160ef8f"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
