# https://github.com/pytorch/audio/blob/master/torchaudio/datasets/utils.py
# no documentation found


#' @keywords internal
download_url <- function(url, destfile, checksum) {
  p <- utils::download.file(url = url, destfile = destfile)

  if (!tools::md5sum(destfile) == checksum)
    runtime_error(glue::glue("MD5 sums are not identical for file: {destfile}."))

  invisible(p)
}

#' Extract Archive
#'
#' @param from_path  (str): the path of the archive.
#' @param to_path  (str, optional): the root path of the extraced files (directory of from_path) (Default: ``NULL``)
#' @param overwrite  (bool, optional): overwrite existing files (Default: ``FALSE``)
#' @return list: List of paths to extracted files even if not overwritten.
#'
#' @examples
#' url = 'http://www.quest.dcs.shef.ac.uk/wmt16_files_mmt/validation.tar.gz'
#' from_path = './validation.tar.gz'
#' to_path = './'
#' torchaudio.datasets.utils.download_from_url (url, from_path)
#' torchaudio.datasets.utils.extract_archive (from_path, to_path)
#'
#' @keywords internal
extract_archive <- function(from_path, to_path = NULL, overwrite = FALSE) {
  ext_file <- fs::path_ext(from_path)
  if(ext_file %in% "zip") {
    utils::unzip(zipfile = from_path, exdir = to_path, overwrite = overwrite)
  } else if(grepl("tar", from_path)) {
    utils::untar(tarfile = from_path, exdir = to_path)
  }
}