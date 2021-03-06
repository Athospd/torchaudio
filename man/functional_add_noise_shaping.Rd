% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functional.R
\name{functional_add_noise_shaping}
\alias{functional_add_noise_shaping}
\title{Noise Shaping (functional)}
\usage{
functional_add_noise_shaping(dithered_waveform, waveform)
}
\arguments{
\item{dithered_waveform}{(Tensor) dithered}

\item{waveform}{(Tensor) original}
}
\value{
\code{tensor} of the noise shaped waveform
}
\description{
Noise shaping is calculated by error:
error[n] = dithered[n] - original[n]
noise_shaped_waveform[n] = dithered[n] + error[n-1]
}
