class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.72.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.72.0/direct-runner-3.72.0-osx-arm64.tar.gz"
      sha256 "bb45383a398e0aba5ece90c6f7a8f1a329c9bd462755cadac8bbeff6ee2c4a4f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.72.0/direct-runner-3.72.0-osx-x64.tar.gz"
      sha256 "81a313dab8c90362ce344d2c925d5a36d0b92a46c3c5cd9afcf29b387f69e403"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.72.0/direct-runner-3.72.0-linux-arm64.tar.gz"
      sha256 "d1041a00f553d4bcbd3e23aee970a90f56297a432ad572f08c525f3beb6e195e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.72.0/direct-runner-3.72.0-linux-x64.tar.gz"
      sha256 "0e070bbc8ef363e3e5163c0f943edc8c6ceef0feaa54cb5257fd04ba8fc7dd2f"
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
