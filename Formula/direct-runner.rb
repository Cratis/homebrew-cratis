class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.137.5"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.5/direct-runner-3.137.5-osx-arm64.tar.gz"
      sha256 "fe31cf3828bd4257e58e1d612779cbb7990c5cd6f9211fb04e522ea456d80d0b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.5/direct-runner-3.137.5-osx-x64.tar.gz"
      sha256 "71d0704d0244aecd3b9de1e88ab5dd3253fd49f8412b8057860adf3ce2c307b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.5/direct-runner-3.137.5-linux-arm64.tar.gz"
      sha256 "ec2ffdc0ff4930fc536c3601c34a4343368956307b6319591855f0f7c6466f47"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.137.5/direct-runner-3.137.5-linux-x64.tar.gz"
      sha256 "7de3d9587e6fa1fa6c0decc7e66762d4f17a600acb856657d25b14b6651921a0"
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
