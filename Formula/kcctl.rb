# Generated with JReleaser 1.4.0 at 2023-01-22T08:24:53.248069676Z
class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.Beta3"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Beta3/kcctl-1.0.0.Beta3-linux-x86_64.zip"
    sha256 "2a44837c59bec175a183ff458f8fe1bdb69de6dbc1cd72bae507c0709ce00e5b"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Beta3/kcctl-1.0.0.Beta3-osx-x86_64.zip"
    sha256 "a1702acdc3bf1ae442690d51cbc6339158625f218054d57d999cdd033b0247a4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.Beta3/kcctl-1.0.0.Beta3-osx-x86_64.zip"
    sha256 "a1702acdc3bf1ae442690d51cbc6339158625f218054d57d999cdd033b0247a4"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl" => "kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.Beta3", output
  end
end
