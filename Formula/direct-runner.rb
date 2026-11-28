class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.152.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.1/direct-runner-3.152.1-osx-arm64.tar.gz"
      sha256 "6b320d370b8e456a9cc67e09a2dd62f98417150217ad35bb1eebbe327ecd4da4"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.1/direct-runner-3.152.1-osx-x64.tar.gz"
      sha256 "a439781fb640f8e6044c303f79d19349e1c1cba6bc261e7ec44eda2dce96b8fb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.1/direct-runner-3.152.1-linux-arm64.tar.gz"
      sha256 "b1233c261c0f7484ea3318a12bec2e60d486ed7c781c9f87a880c8ee06d8838a"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.152.1/direct-runner-3.152.1-linux-x64.tar.gz"
      sha256 "fa6f95969035668bfecfc2f94c6dc276155fa85f4d08caf12da54f971b92c53c"
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
