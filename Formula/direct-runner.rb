class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.123.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.123.0/direct-runner-3.123.0-osx-arm64.tar.gz"
      sha256 "e0f1a08d40e1047dded30a0c2e794ecd09ed5a74e1133400d7d35389c479238f"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.123.0/direct-runner-3.123.0-osx-x64.tar.gz"
      sha256 "ab21cfb6c981a60aecdd11a80a44b00feabf7c4387a00d8d4780672e71c9d17a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.123.0/direct-runner-3.123.0-linux-arm64.tar.gz"
      sha256 "0971380bba0744fc08c1642beeb19409867d6a49cdd377020912966dd6c4c31a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.123.0/direct-runner-3.123.0-linux-x64.tar.gz"
      sha256 "f010356ffd30f2d750f73b0329f546e09e159fc338cdbf8c2f8e643d6605d2b1"
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
