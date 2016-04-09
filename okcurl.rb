class Okcurl < Formula
  desc "OkCurl"
  homepage "http://square.github.io/okhttp/"
  # url "http://repo1.maven.org/maven2/com/squareup/okhttp3/3.3.0/okcurl-3.3.0-bundle.tar.gz"
  url "file:///Users/yuri/workspace/okhttp/okcurl/target/okcurl-3.3.0-SNAPSHOT-bundle.tar.gz"
  version "3.3.0-SNAPSHOT"
  sha256 "1c6ee6ab18611f80cd5f4e3f79f87cdaad1b2882cffb96623e5724a0cf650115"

  depends_on :java

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/okcurl" do |s|
      s.gsub! /^INSTALLDIR.*/, "INSTALLDIR=#{libexec}"
    end
    bin.install_symlink "#{libexec}/bin/okcurl"
  end

  test do
    system "#{bin}/okcurl" "https://graph.facebook.com/robots.txt"
  end
end
