class DirectRunner < Formula
  desc "Runs Cratis Direct's agents on your own machine"
  homepage "https://github.com/Cratis/DirectPublic"
  version "3.62.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.0/direct-runner-3.62.0-osx-arm64.tar.gz"
      sha256 "ea2f9c8ea474e7cbcc014f2798dc5dd44640200ebd90af0ca9c86da97a9c2470"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.0/direct-runner-3.62.0-osx-x64.tar.gz"
      sha256 "99be5fe73ed49f1a9261b829c28dc53a7d5d17a5b29762527d492b9b7594db8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.0/direct-runner-3.62.0-linux-arm64.tar.gz"
      sha256 "2f1091bf49f43b313130c65e02a417d067364287aa9112bed280adef33d16525"
    end
    on_intel do
      url "https://github.com/Cratis/DirectPublic/releases/download/v3.62.0/direct-runner-3.62.0-linux-x64.tar.gz"
      sha256 "b1a3372aab9236f42ad95227023c9feb80b9473c43cfa734f823b5b8305fedf8"
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
