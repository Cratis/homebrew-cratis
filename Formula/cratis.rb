class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.110.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.4/cratis-3.110.4-osx-arm64.tar.gz"
      sha256 "c28f656fb955a43e7d1c0343e21662ed046a24167fcaeefa347c49255c69f975"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.4/cratis-3.110.4-osx-x64.tar.gz"
      sha256 "b3ec22c7ed2eebaa85f4377b591772f91f7edc882b2a4de407d89cc56c02ffea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.110.4/cratis-3.110.4-linux-arm64.tar.gz"
      sha256 "76389ea1aec3ca3a42d94df5a69f516d62557a681e55a72ea4e4df9860684362"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.110.4/cratis-3.110.4-linux-x64.tar.gz"
      sha256 "6332b3f3a9f12a2b576017d21c92c632184466ac9606c79579589c24a72b996b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
