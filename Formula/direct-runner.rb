class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.58.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.0/direct-runner-3.58.0-osx-arm64.tar.gz"
      sha256 "10a435a7b07a7f78d2d312ceeaa1cfb433d9e7ab61bcfaa763738f722264ef64"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.0/direct-runner-3.58.0-osx-x64.tar.gz"
      sha256 "949f5e280671d2dd4668bbebc51ec5acb643fa5db849bb0344a7b52bd239f069"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.0/direct-runner-3.58.0-linux-arm64.tar.gz"
      sha256 "27891856ee091668a419b4c49c97f06672df87dfa29db884319680b92beb64c6"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.58.0/direct-runner-3.58.0-linux-x64.tar.gz"
      sha256 "adeffb8b420b79ae2d801dfb37c3cf2ab8cd5cdd35a68776f029af46c1352c0e"
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
