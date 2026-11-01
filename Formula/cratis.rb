class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.117.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.117.0/cratis-3.117.0-osx-arm64.tar.gz"
      sha256 "6077a3f2e77dce90db7e1deeff72f6a05a7e8057417327020da8e5d443219f2c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.117.0/cratis-3.117.0-osx-x64.tar.gz"
      sha256 "d4798d0fc1a6f07bf8c9853b279b8c4bce8bb6e4a99834a74ba23bcc0068c67b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.117.0/cratis-3.117.0-linux-arm64.tar.gz"
      sha256 "821fd7d1b1f8d9aae56fbc4577fafe40b64e57accdefb0eff1b3832abf9f0ed9"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.117.0/cratis-3.117.0-linux-x64.tar.gz"
      sha256 "5f4b4794b28173d8ab6ae895a66748c7d6b4f0632406072804d15cfc0c214d46"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
