class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.145.2"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.2/direct-runner-3.145.2-osx-arm64.tar.gz"
      sha256 "7801c2917057ac117a34684eda30a29941af4e976fe036afa212e49683300a34"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.2/direct-runner-3.145.2-osx-x64.tar.gz"
      sha256 "b4fd340ad26244ba20c117477c96d43411b46931f6bcefd2c76c5738d2a75853"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.2/direct-runner-3.145.2-linux-arm64.tar.gz"
      sha256 "605f51103db9471ecbad9b8e1c3392f5dbde2ae9e9d58bf309e9e23ef9e5de52"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.145.2/direct-runner-3.145.2-linux-x64.tar.gz"
      sha256 "7372078af3f1a292b608c59350ec95651e5589e30e42311fd887ba789e81717d"
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
