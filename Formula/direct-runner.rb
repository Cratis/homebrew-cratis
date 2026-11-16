class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.117.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.0/direct-runner-3.117.0-osx-arm64.tar.gz"
      sha256 "66a21f40737c9d18d1da0781eb2a37e2412cdf43293f2294e8b6614fae319fbd"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.0/direct-runner-3.117.0-osx-x64.tar.gz"
      sha256 "2a500d0203431c7114d5b7efad27fc02a8e9876bf4aa34350eb684daa0524781"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.0/direct-runner-3.117.0-linux-arm64.tar.gz"
      sha256 "644834b2a2df56ca56ba88d5c56f1504a76812f31acd3e8b52ea5110ce371069"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.117.0/direct-runner-3.117.0-linux-x64.tar.gz"
      sha256 "5b2c10a4a239be2c8b5955273c5129546d734cc023c2e5e99f8ee5da7752e5bf"
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
