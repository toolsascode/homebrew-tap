# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gomodeler < Formula
  desc "Go Modeler is a small CLI and Library that brings the powerful features of the golang template into a simplified form."
  homepage "https://github.com/toolsascode/gomodeler"
  version "0.1.1"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    on_intel do
      url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.1/gomodeler_Darwin_x86_64.tar.gz"
      sha256 "216c925e4be0c2c4d81cc6e34c1d518673992788ca7ce2ecdf1d9344ef415e19"

      def install
        bin.install "gomodeler"
        bash_completion.install "completions/gomodeler.bash" => "gomodeler"
        zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
        fish_completion.install "completions/gomodeler.fish"
        man1.install "manpages/gomodeler.1.gz"
      end
    end
    on_arm do
      url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.1/gomodeler_Darwin_arm64.tar.gz"
      sha256 "65f65d96b20e27f5dcb2d30a70899065a90f7c56cadd6ed4c2a33695000a7017"

      def install
        bin.install "gomodeler"
        bash_completion.install "completions/gomodeler.bash" => "gomodeler"
        zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
        fish_completion.install "completions/gomodeler.fish"
        man1.install "manpages/gomodeler.1.gz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.1/gomodeler_Linux_x86_64.tar.gz"
        sha256 "80d95e1f893452cf0f2b33e29db758f2d3abebce122e5d71f56505171473e709"

        def install
          bin.install "gomodeler"
          bash_completion.install "completions/gomodeler.bash" => "gomodeler"
          zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
          fish_completion.install "completions/gomodeler.fish"
          man1.install "manpages/gomodeler.1.gz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/toolsascode/gomodeler/releases/download/v0.1.1/gomodeler_Linux_arm64.tar.gz"
        sha256 "b026a9fdf2052b1e147aeb4a775056f78959e03bc37503f80a6586c0cad66a08"

        def install
          bin.install "gomodeler"
          bash_completion.install "completions/gomodeler.bash" => "gomodeler"
          zsh_completion.install "completions/gomodeler.zsh" => "_gomodeler"
          fish_completion.install "completions/gomodeler.fish"
          man1.install "manpages/gomodeler.1.gz"
        end
      end
    end
  end

  test do
    system "#{bin}/gomodeler version"
  end
end
