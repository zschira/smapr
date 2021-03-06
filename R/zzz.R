ftp_prefix <- function() {
    "ftp://n5eil01u.ecs.nsidc.org/SAN/SMAP/"
}

extensions <- function() {
    c('.h5', '.qa', '.h5.iso.xml')
}

min_extensions <- function(){
    c('.h5', '.h5.iso.xml')
}

smap_crs <- function(file) {
    if (is_L3FT(file)) {
        crs <- "+proj=laea +lon_0=0 +lat_0=90 +datum=WGS84 +units=m"
    } else {
        crs <- "+proj=cea +lat_ts=30 +datum=WGS84 +units=m"
    }
    crs
}

latlon_crs <- function() {
    "+proj=longlat +lat_ts=30 +datum=WGS84 +units=m"
}

local_h5_paths <- function(files) {
    stopifnot(is.data.frame(files))
    filenames <- paste0(files$name, '.h5')
    paths_with_filenames <- file.path(files$local_dir, filenames)
}
