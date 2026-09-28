class Cratis < Formula
  desc "CLI for inspecting and diagnosing Chronicle event-sourcing stores"
  homepage "https://github.com/Cratis/cli"
  version "3.21.0"

  on_macos do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.0/cratis-3.21.0-osx-arm64.tar.gz"
      sha256 "237fa9fab87153bc0f79e170b384d8e22c9d158b878b56a226766222b0480c2d"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.0/cratis-3.21.0-osx-x64.tar.gz"
      sha256 "2736cb53746f4857868b228b367ec2f51ea628d10305d8cbd76fef0e270bee07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/Cratis/cli/releases/download/v3.21.0/cratis-3.21.0-linux-arm64.tar.gz"
      sha256 "eafbdc08d44f8e854b13584bab09e464ef8626c93063392c9c4b4fa700b7e842"
    end
    on_intel do
      url "https://github.com/Cratis/cli/releases/download/v3.21.0/cratis-3.21.0-linux-x64.tar.gz"
      sha256 "2d286643b08e97a44227f0bfc819219c644a491e564f0fb4de955c10a328167b"
    end
  end

  def install
    bin.install "cratis"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cratis --version")
  end
end
