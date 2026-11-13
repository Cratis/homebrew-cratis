class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.76.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.2/direct-runner-3.76.2-osx-arm64.tar.gz"
      sha256 "353309598c8957e41cc04e760587bf478d4c3d1b5d28745a30f52703c81fa5a2"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.2/direct-runner-3.76.2-osx-x64.tar.gz"
      sha256 "2120f43bb52d51b10379f02d1f6b703ea89e3699e9b214bbf230649848c3e99e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.2/direct-runner-3.76.2-linux-arm64.tar.gz"
      sha256 "903c2645f3f2af2769a79f54c15cb7b71501adff65c83ea18406df46f12d7e4a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.2/direct-runner-3.76.2-linux-x64.tar.gz"
      sha256 "dae05fd6e3702a791f6cdbb212e1a36ab09371d75a3abb0aa58f46db3d5beb03"
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
