% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fpr_tidy_assign_site_id.R
\name{fpr_tidy_assign_site_id}
\alias{fpr_tidy_assign_site_id}
\title{Function to process site ID value from pscis_crossing_id and my_crossing_reference}
\usage{
fpr_tidy_assign_site_id(dat = NULL)
}
\arguments{
\item{dat}{A dataframe to process. Default is NULL.}
}
\value{
A processed dataframe.
}
\description{
Intended for processing field data from digital form in which only one value should be provided.
It checks if the dataframe has both 'pscis_crossing_id' and 'my_crossing_reference' values, or none of them.
If any rows violate these rules, it returns an error that prints out a simplified dataframe with violating rows.
}
\examples{
\dontrun{
dat_pass <- tibble(
pscis_crossing_id = c(1, 2, NA, 4),
my_crossing_reference = c(NA, NA, 3, NA),
date_time_start = Sys.time() + 0:3
)

fpr_tidy_assign_site_id(dat_pass)
}
}
\concept{tidy}
