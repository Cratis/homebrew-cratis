class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.137.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.137.1/cratis-3.137.1-osx-arm64.tar.gz"
      sha256 "98ee673003a3b83c2583cdc51dc192617431d4bcc691dc944c4626c9a8e3c7d0"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.137.1/cratis-3.137.1-osx-x64.tar.gz"
      sha256 "a447ec8a1b2efa50646880818bb8913b6ab3866ae6e3475942a779131c1dfd5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.137.1/cratis-3.137.1-linux-arm64.tar.gz"
      sha256 "4e0c42d4a52390a4e733f4db80a9948ae8be82ce5fef6696600e608968357b06"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.137.1/cratis-3.137.1-linux-x64.tar.gz"
      sha256 "b0c83a7074424311eed5a62a852d9f8746321b1cbee253f94301b2913dd4bc97"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
