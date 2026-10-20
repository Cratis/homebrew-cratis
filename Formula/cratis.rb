class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.93.4"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.4/cratis-3.93.4-osx-arm64.tar.gz"
      sha256 "cabc42db502bc2aef9c1e38d14501def0b4d57d337a0de46d57b7beafcaae166"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.4/cratis-3.93.4-osx-x64.tar.gz"
      sha256 "d7be1f336e0ff31947be6c699814b4b0e59c5a325599026454b71f63cf1be45b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.93.4/cratis-3.93.4-linux-arm64.tar.gz"
      sha256 "7be161a679927b2ac554a8fec6df67e68490fd11205fea3d02abf2e74781a74f"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.93.4/cratis-3.93.4-linux-x64.tar.gz"
      sha256 "d27a9631d567ce44014c1d89c5ea62c296cdcd9a6d59c23279da79d57af9f3ba"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
