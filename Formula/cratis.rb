class Cratis < Formula
  desc "Command-line tool for managing and exploring Chronicle event stores"
  homepage "https://github.com/Cratis/cli"
  version "1.6.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.6.0/cratis-1.6.0-osx-arm64.tar.gz"
      sha256 "505df2c7a8d7b8c09866be9740685d7931e5e94a06c8639aabc20df44d0e8e58"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.6.0/cratis-1.6.0-osx-x64.tar.gz"
      sha256 "d197de9eda4a24f48d056951cb3f11ebebd9c9ceb33c364681ce4655d60eee3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v1.6.0/cratis-1.6.0-linux-arm64.tar.gz"
      sha256 "3d0e612f62d1ec7cdf35804d92caae4eadb4bf376a8207e79e2e9c7c5719806c"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v1.6.0/cratis-1.6.0-linux-x64.tar.gz"
      sha256 "b52032b3e32943ff575ed8b01acc6b0cce969f402ec78512f8fbf476d1a791f1"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
