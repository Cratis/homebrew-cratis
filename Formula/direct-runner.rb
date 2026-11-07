class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.41.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.41.0/direct-runner-3.41.0-osx-arm64.tar.gz"
      sha256 "eb77b23892cedc371e2ed369cf56862393483a4f94daa58f2961b848f840cbb9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.41.0/direct-runner-3.41.0-osx-x64.tar.gz"
      sha256 "17da24a4442f3faa2913bb5220e7646237625c464471839aafbb44fec9c51f03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.41.0/direct-runner-3.41.0-linux-arm64.tar.gz"
      sha256 "154862ad9b7d28b5b3bee907d31f2ad2c0f145c5ba07732b0334d6d233e0b9ce"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.41.0/direct-runner-3.41.0-linux-x64.tar.gz"
      sha256 "78fee9c1042466ef7dc064380d6bd297a281d66390c3a2a1059a21b4e40b506d"
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
