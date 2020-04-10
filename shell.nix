with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "srip";
  buildInputs = [
    autoconf
    autoconf-archive
    automake
    autoreconfHook
    bash
    dbus
    dbus_tools
    gst_all_1.gstreamer
    gst_all_1.gst-editing-services
    gst_all_1.gst-libav
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-ugly
    gst_all_1.gst-vaapi
    inotify-tools
    jsoncpp
    json-glib
    libjson
    libtool
    pkg-config
    pulseaudio
  ];
  shellHook = ''
    export GST_PLUGIN_PATH="$GST_PLUGIN_SYSTEM_PATH_1_0"
  '';
}
