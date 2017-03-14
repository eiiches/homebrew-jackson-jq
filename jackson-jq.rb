class JacksonJq < Formula
  desc "Jackson jq command line JSON processor"
  homepage "https://github.com/eiiches/jackson-jq"
  version "0.0.7"
  url "http://central.maven.org/maven2/net/thisptr/jackson-jq-cli/0.0.7/jackson-jq-cli-0.0.7.jar"
  sha256 "d2d6188370471013a380e5a07c91160537241c8de655946100bf9114d65401f9"

  bottle :unneeded

  def install
    libexec.install "jackson-jq-cli-#{version}.jar"
    bin.write_jar_script libexec/"jackson-jq-cli-#{version}.jar", "jackson-jq"
  end
end
