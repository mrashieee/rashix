{ config, ... }:

{
    # Mount Windows (C:)
    fileSystems."/mnt/windows" = {
        device = "/dev/disk/by-uuid/6C52F70752F6D534";
        fsType = "ntfs3";
        options = [ "rw" "uid=1000" "gid=100" "umask=022" ];
  };
}