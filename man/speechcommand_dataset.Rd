% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataset-speechcommands.R
\name{speechcommand_dataset}
\alias{speechcommand_dataset}
\title{Speech Commands Dataset}
\usage{
speechcommand_dataset(
  root,
  url = "speech_commands_v0.02",
  folder_in_archive = "SpeechCommands",
  download = FALSE,
  normalization = NULL
)
}
\arguments{
\item{root}{(str): Path to the directory where the dataset is found or downloaded.}

\item{url}{(str, optional): The URL to download the dataset from,
or the type of the dataset to dowload.
Allowed type values are \code{"speech_commands_v0.01"} and \code{"speech_commands_v0.02"}
(default: \code{"speech_commands_v0.02"})}

\item{folder_in_archive}{(str, optional): The top-level directory of the dataset.  (default: \code{"SpeechCommands"})}

\item{download}{(bool, optional): Whether to download the dataset if it is not found at root path.  (default: \code{FALSE}).}

\item{normalization}{(NULL, bool, int or function): Optional normalization.
If boolean TRUE, then output is divided by 2^31. Assuming the input is signed 32-bit audio,
this normalizes to \link{-1, 1}. If numeric, then output is divided by that number.
If function, then the output is passed as a paramete to the given function,
then the output is divided by the result. (Default: NULL)}
}
\value{
a torch::dataset()
}
\description{
Speech Commands Dataset
}
