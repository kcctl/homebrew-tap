# Generated with JReleaser 1.16.0 at 2026-10-22T10:52:04.026736631Z

class Kcctl < Formula
  desc "kcctl -- A CLI for Apache Kafka Connect"
  homepage "https://github.com/kcctl/kcctl"
  version "1.0.0.CR5"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR5/kcctl-1.0.0.CR5-linux-aarch_64.zip"
    sha256 "70441b26c60d9a5e99278cbee895dcd2bf2193dd7c120033ad155fd49beb8e9b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR5/kcctl-1.0.0.CR5-linux-x86_64.zip"
    sha256 "b355ca874a4cea028a9389381abeb77eecb889c8b0bedf833eb1d3f5bba2d561"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR5/kcctl-1.0.0.CR5-osx-aarch_64.zip"
    sha256 "1b8a6f18b9f436fe6ef081579fcec277be0abb17d03e942075ed03489e97a8f8"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/kcctl/kcctl/releases/download/v1.0.0.CR5/kcctl-1.0.0.CR5-osx-x86_64.zip"
    sha256 "75a27221c6ec3a5e2906d1c654596c76281d04c169e19b3ed71ec9b3154f8faf"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kcctl" => "kcctl"
  end

  test do
    output = shell_output("#{bin}/kcctl --version")
    assert_match "1.0.0.CR5", output
  end
end
