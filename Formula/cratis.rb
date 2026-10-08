class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.37.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.37.1/cratis-3.37.1-osx-arm64.tar.gz"
      sha256 "a34b701a2baba857c04c68853e148c47f84565c392f7280d0c7a914cf45ac21e"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.37.1/cratis-3.37.1-osx-x64.tar.gz"
      sha256 "cb64efffc79f93b0b7bf7d0afecca9ddcf64a8cb3f42ee0b1ffbf62cfe5c6a12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.37.1/cratis-3.37.1-linux-arm64.tar.gz"
      sha256 "adb944f08147495f1ebf26e86d3098e8835e94be26b12c7c3b86d51d4ee68470"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.37.1/cratis-3.37.1-linux-x64.tar.gz"
      sha256 "3840dc612d21af5cb5e9ef694b55aa61233b50a9eaf35c3cb3e7e085e76762c7"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
