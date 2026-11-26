class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.148.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.0/direct-runner-3.148.0-osx-arm64.tar.gz"
      sha256 "86f6060a15d03c7e6ee462fef952215bc4d4695ee5b7c5a8d141c21b00b1e76a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.0/direct-runner-3.148.0-osx-x64.tar.gz"
      sha256 "01fb82de4e27814f0d3828e3bd0d7696995735da97897b060e3b74e26b9999ed"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.0/direct-runner-3.148.0-linux-arm64.tar.gz"
      sha256 "8b95c78ad5775af5a297123dc34b5906dead60e3651cef2ef036013ef52e17f2"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.148.0/direct-runner-3.148.0-linux-x64.tar.gz"
      sha256 "712b56489d082d4d7856e865638501d0bbfe9f8c62fd11f06cfa665de2d7e0c5"
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
