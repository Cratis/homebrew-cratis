class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.147.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.147.0/cratis-3.147.0-osx-arm64.tar.gz"
      sha256 "a6450331bcf5de7b9b974c9617f325c2230c140cbeb52bda4e6ac25d5913f1f4"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.147.0/cratis-3.147.0-osx-x64.tar.gz"
      sha256 "1e22a4819dc5d5c35a69ddf7947752edbaa02fde058a538cddeb696348890bf6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.147.0/cratis-3.147.0-linux-arm64.tar.gz"
      sha256 "34373c2b955dc88d1502144aac0f5a21627cfae4fe9d5fab5c52a415c2a7559c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.147.0/cratis-3.147.0-linux-x64.tar.gz"
      sha256 "4f7e9f2f69f22e99f47760a8fd62f4345c5659de0521256ec1914f1d010e2ce6"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
