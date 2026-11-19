class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.140.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.140.0/cratis-3.140.0-osx-arm64.tar.gz"
      sha256 "b734978161b501b8eb23f6da0bbeb6a75339fdf2facc5a6de35c009bfab6930f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.140.0/cratis-3.140.0-osx-x64.tar.gz"
      sha256 "968fee91a4a82d7a7e0394653866544a9339e95de18b00418ee440ab8c829541"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.140.0/cratis-3.140.0-linux-arm64.tar.gz"
      sha256 "90a6838621c9c3fb7e6a970a759f185bb7cbd33c33f49fb4328ca1be78eeaf85"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.140.0/cratis-3.140.0-linux-x64.tar.gz"
      sha256 "b4365bec51ec493d422be2db839c39ad931f0a0ddfd240bf5e21dc656b2934c6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
