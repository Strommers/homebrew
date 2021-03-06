require 'formula'

class GlibNetworking < Formula
  homepage 'https://launchpad.net/glib-networking'
  url 'http://ftp.gnome.org/pub/GNOME/sources/glib-networking/2.36/glib-networking-2.36.1.tar.xz'
  sha256 'e2df2d1943a6193ca471addc58539895da1ae96fdba305dedb937ef56adb57ea'

  depends_on 'pkg-config' => :build
  depends_on 'xz' => :build
  depends_on 'intltool' => :build
  depends_on 'gettext'
  depends_on 'glib'
  depends_on 'gnutls'
  depends_on 'gsettings-desktop-schemas'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--without-ca-certificates",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
