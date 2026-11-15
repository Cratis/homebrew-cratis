class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.110.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.1/direct-runner-3.110.1-osx-arm64.tar.gz"
      sha256 "a6f4c1c91ddc865cd8d626635cb4bca86e6712daace69ef4bf5adb4c38b12799"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.1/direct-runner-3.110.1-osx-x64.tar.gz"
      sha256 "d4b84e693d578cc6d2cdd80fda82909783875048b374729cafb42b31589143ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.1/direct-runner-3.110.1-linux-arm64.tar.gz"
      sha256 "64d2303c909f5f123d5d3d4d1de4e4aa33c4a872bd8d77ddca3a5047f19e2a5e"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.110.1/direct-runner-3.110.1-linux-x64.tar.gz"
      sha256 "e3257a557f90be097f0b99a8f46568139873271f402850770a4ffe0d8403c7de"
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
