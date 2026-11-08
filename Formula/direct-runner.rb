class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.45.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.45.0/direct-runner-3.45.0-osx-arm64.tar.gz"
      sha256 "33174ed473ba94cae4aeda8c45a93bc7e328396e7656f6f30eb60c5a5698066d"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.45.0/direct-runner-3.45.0-osx-x64.tar.gz"
      sha256 "05b33135ec8d97adcaf3a3aafd1a63fa0b2e9dda8ead39619d770e869edd0a47"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.45.0/direct-runner-3.45.0-linux-arm64.tar.gz"
      sha256 "7f905516d4d1ef74cb2b331854d8aea05d974da14b508fbf3fa814188a5fc679"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.45.0/direct-runner-3.45.0-linux-x64.tar.gz"
      sha256 "ddfcb0f3414216adf09ce8f0df7b5cbcd07a05e3fb6c29540ed884c1a021a553"
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
