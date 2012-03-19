node "sodium.electricgrey.com" inherits server {
    # CLI Apps
    include lftp

    group { "users": ensure => present, }
    User <| $title == "mythmon" |> {
        groups     +> ['music'],
    }
}
