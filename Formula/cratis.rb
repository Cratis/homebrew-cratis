class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.23.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.23.0/cratis-3.23.0-osx-arm64.tar.gz"
      sha256 "8c84c67657cc7f5fbfae4e127345d797cf4561748167f540a48589ec49c12d16"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.23.0/cratis-3.23.0-osx-x64.tar.gz"
      sha256 "2a5fb4bcea23110b1c65983def4cac68d274408f956fc65d16fd43a7d906b162"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.23.0/cratis-3.23.0-linux-arm64.tar.gz"
      sha256 "58f5e800e9673e23bb2c7c3d72a1ef16676bd21f9954aea6b460d27d15367c17"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.23.0/cratis-3.23.0-linux-x64.tar.gz"
      sha256 "16d8a5d632f067d4a1d6b7a0f69db0ef91b3c3ce5805b18cbed7de6dfbd8c765"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
