class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.108.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.1/direct-runner-3.108.1-osx-arm64.tar.gz"
      sha256 "d00a64d492d87efca47ba694e69b1227e4b136537bdb7bc4f4ae216a9ce21058"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.1/direct-runner-3.108.1-osx-x64.tar.gz"
      sha256 "58d11b31e4317503e8851e0de2731d8c376b9107dea4bfd61e56242a9da61e19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.1/direct-runner-3.108.1-linux-arm64.tar.gz"
      sha256 "cc8a5291fd0406966e68c5a5c4d08dd8788b2f7f321924089302030648670b4b"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.108.1/direct-runner-3.108.1-linux-x64.tar.gz"
      sha256 "64f86fde89a40c712551037a4456156cc21cc0661f47d18121980f932483744a"
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
