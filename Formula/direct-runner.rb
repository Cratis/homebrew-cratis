class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.124.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.3/direct-runner-3.124.3-osx-arm64.tar.gz"
      sha256 "e46027812cdaa84a9cebb407ac268baab4ac2ffc05b1f00769f8897725d8c9f1"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.3/direct-runner-3.124.3-osx-x64.tar.gz"
      sha256 "ecf9db48836d4ea9de171e19db676eeda0afeb65b48c5b2988490c2b139e3d53"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.3/direct-runner-3.124.3-linux-arm64.tar.gz"
      sha256 "06a06d4ced40bc39a01833476a17423c8c7afdb0533f3e4cf9baace761bb2dde"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.124.3/direct-runner-3.124.3-linux-x64.tar.gz"
      sha256 "47fe2b78dc11dfea8928f39f900f26907e839066a4e1e4df9e3ab070ab238083"
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
