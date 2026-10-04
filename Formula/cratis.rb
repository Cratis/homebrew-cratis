class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.27.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.27.0/cratis-3.27.0-osx-arm64.tar.gz"
      sha256 "ad3ae506dc05d250828d0659d44465725045a3620fd189c8c30037c920bb6e4e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.27.0/cratis-3.27.0-osx-x64.tar.gz"
      sha256 "7210c89ebda733dbaad4ff20dc0c69eb6c4af8bf00a232ebfebde04219f43fdf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.27.0/cratis-3.27.0-linux-arm64.tar.gz"
      sha256 "b510cffdd126a3cf4fd202b5a474d3b349a1c0199010ecc56af5a14c2f751eab"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.27.0/cratis-3.27.0-linux-x64.tar.gz"
      sha256 "90600ac3a31a48f1ffc2fb0e5eeb095288ef5b0440134f84e22952e080b7e85c"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
