class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.81.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.81.0/direct-runner-3.81.0-osx-arm64.tar.gz"
      sha256 "05e86f198e348dcb1d33d3aeb26f22920688beb263f9b45a0fc831fa029302af"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.81.0/direct-runner-3.81.0-osx-x64.tar.gz"
      sha256 "3550e7706d90ddf1f0a0fa6f2ee0d5f4e538dc418cdf3d57061b404ea77f74c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.81.0/direct-runner-3.81.0-linux-arm64.tar.gz"
      sha256 "6ddacf46729cd4baac151a0cff43c1884e4d35baa75d23513da10c0159d43ab4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.81.0/direct-runner-3.81.0-linux-x64.tar.gz"
      sha256 "cd281d3d974b35c79c9a335920e0ba213854b79a194579520313da438856b3d5"
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
