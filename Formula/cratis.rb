class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.79.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.79.0/cratis-3.79.0-osx-arm64.tar.gz"
      sha256 "875a779f32a536fcc69aee928af6cc077a4744d13eade31af0f2cb71bed87196"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.79.0/cratis-3.79.0-osx-x64.tar.gz"
      sha256 "3c57a5a3b6dcfe3e29c7fa7eff43543a7bdda1e79fbbfc0f1bbd1fd5f9714935"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.79.0/cratis-3.79.0-linux-arm64.tar.gz"
      sha256 "5619ce1f9656c9a701ad2f287fa1b981023b767d2094fb87bae86a2fecc433e8"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.79.0/cratis-3.79.0-linux-x64.tar.gz"
      sha256 "6bc8c14a87dc3e1304936c26e0d5f5195315e4e6050a0381d284ccf9ebea049c"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
