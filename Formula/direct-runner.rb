class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.64.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.1/direct-runner-3.64.1-osx-arm64.tar.gz"
      sha256 "60f4ece2ac5212629fa5a59d7fce9473c5fe1896d69c15022d9408348ba38706"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.1/direct-runner-3.64.1-osx-x64.tar.gz"
      sha256 "1bb60380d7ad161e808882731065ee5d24661ee88a713471f38a7b908d13a13f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.1/direct-runner-3.64.1-linux-arm64.tar.gz"
      sha256 "62a848cdca29fd1732ea2385b9d20d38d16e2f340ea6379f37f90f15f5a97309"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.64.1/direct-runner-3.64.1-linux-x64.tar.gz"
      sha256 "73d60078e7c8d6a8cfef568cf4e5d12801d5fdd58fa991afdfe71ec30243c35c"
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
