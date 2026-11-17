class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.126.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.126.0/direct-runner-3.126.0-osx-arm64.tar.gz"
      sha256 "d3315e0543b05ec67fbd64e90f106db460dadf8dc480ec13f2ad402d826cb006"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.126.0/direct-runner-3.126.0-osx-x64.tar.gz"
      sha256 "03cf78ba48629d28ca1d0b561711d6174bf44c7a990a73f94a80be242a2ede12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.126.0/direct-runner-3.126.0-linux-arm64.tar.gz"
      sha256 "634eb780429c496812de49420f740bfcba84d4aa9106df375369bd970749a002"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.126.0/direct-runner-3.126.0-linux-x64.tar.gz"
      sha256 "53a8b6e9659e6ab6f05603051cd14fc6a966be9dd6bce311112a2ac5cda781e5"
    end
  end

  def install
    bin.install "direct-runner"
  end

  service do
    run [opt_bin/"direct-runner"]
    keep_alive true
    log_path var/"log/direct-runner.log"
    error_log_path var/"log/direct-runner.log"
  end
end
