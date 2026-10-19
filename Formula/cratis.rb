class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.89.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.89.0/cratis-3.89.0-osx-arm64.tar.gz"
      sha256 "891e94ad6546c7a8855d65006a3a0bd9ad93d8e1c4749f058d9ce6dcfe93c424"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.89.0/cratis-3.89.0-osx-x64.tar.gz"
      sha256 "d5d154babbe627c29ed957003fee3ac60b02b86063e7933684f314b71b7ffd67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.89.0/cratis-3.89.0-linux-arm64.tar.gz"
      sha256 "e8c735dd8bc6be718bb4d392220749253899f26034e1e7677b29dfba397e794a"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.89.0/cratis-3.89.0-linux-x64.tar.gz"
      sha256 "6b451c35846adca702fc7ae0ce626369a1ca2fcd8c64d8a4d3d1fac6b51210a6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
