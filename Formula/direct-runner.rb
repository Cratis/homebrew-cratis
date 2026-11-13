class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.76.3"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.3/direct-runner-3.76.3-osx-arm64.tar.gz"
      sha256 "9aa3047b7d5dd6d9c6ab9d76271bf9dbe54bc80bb0d5a10684db19cab94b879c"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.3/direct-runner-3.76.3-osx-x64.tar.gz"
      sha256 "24f5a1f8d6a2b7e23b56eca42aca341221593caaa4dd286d1375fc541dfed65e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.3/direct-runner-3.76.3-linux-arm64.tar.gz"
      sha256 "cfc37536e97664c7c43176cee20c199d104e028f6f94233fb2a1038c1701f267"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.76.3/direct-runner-3.76.3-linux-x64.tar.gz"
      sha256 "bc6e31df141530885f9cf49bc1b4b1de8a7f7ab5465a7657d9e7a0fe37174ea0"
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
