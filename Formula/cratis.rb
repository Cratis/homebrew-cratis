class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.118.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.118.0/cratis-3.118.0-osx-arm64.tar.gz"
      sha256 "62f32eae0ec94224e661b1534eed70fde182b70c29b026bd03770e3646d3bf11"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.118.0/cratis-3.118.0-osx-x64.tar.gz"
      sha256 "d3dac1e1d3d21590e3a3cb26a7250c8f5521413507105c76c62f13b6e621317b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.118.0/cratis-3.118.0-linux-arm64.tar.gz"
      sha256 "801870554a69692a4c9b94ec50d36db23cc472cd4b479f82694c41775ade4d1e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.118.0/cratis-3.118.0-linux-x64.tar.gz"
      sha256 "15274a907c4d3dbf8ade17208bc17f559c86c6fe97253684b4add44d8948110e"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
