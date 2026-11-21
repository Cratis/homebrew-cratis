class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.140.1"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.140.1/direct-runner-3.140.1-osx-arm64.tar.gz"
      sha256 "af8046fc862b9d4d9a9195754c181c81cb2fdd55b36fa354cdef0bc49ca9c5f9"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.140.1/direct-runner-3.140.1-osx-x64.tar.gz"
      sha256 "1c676ba7e37544a21b7eaafded8b0ca5fafee84f11a624612c2dbfdd2f10ed54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.140.1/direct-runner-3.140.1-linux-arm64.tar.gz"
      sha256 "767eea9ff5400fe49a492940ba19b99949b39420bd1ed86c420799f3451d69ce"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.140.1/direct-runner-3.140.1-linux-x64.tar.gz"
      sha256 "cbf4cbdef56f9fdb2743431be6b640919da013eed910c4582372024d01018962"
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
