% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extras.R
\name{linear_to_mel_frequency}
\alias{linear_to_mel_frequency}
\title{Linear to mel frequency}
\usage{
linear_to_mel_frequency(
  frequency_in_hertz,
  mel_break_frequency_hertz = 2595,
  mel_high_frequency_q = 700
)
}
\arguments{
\item{frequency_in_hertz}{(numeric) tensor of frequencies in hertz to be converted to mel scale.}

\item{mel_break_frequency_hertz}{(numeric) scalar. (Default to 2595.0)}

\item{mel_high_frequency_q}{(numeric) scalar. (Default to 700.0)}
}
\value{
\code{tensor}
}
\description{
Converts frequencies from the linear scale to mel scale.
}
