class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.1.7"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.7/cratis-3.1.7-osx-arm64.tar.gz"
      sha256 "da174d2bc3956421107b6490777387a61d4dfe896a39f29755a3bfc387ce85ae"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.7/cratis-3.1.7-osx-x64.tar.gz"
      sha256 "db15a83ab76602f7e662c5739f68325f6d288709beadd34ec7b75ee31dea0df4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.1.7/cratis-3.1.7-linux-arm64.tar.gz"
      sha256 "32b57063aa66df76a02bdd7e7c190eb5ac8d5ee1f0e5202d8103b9f93adf2f23"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.1.7/cratis-3.1.7-linux-x64.tar.gz"
      sha256 "28da436aeb03633349bb8d43ccc912a09ca46c3af85a74846322ec36a3d7882b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
