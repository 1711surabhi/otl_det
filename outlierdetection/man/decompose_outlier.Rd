% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Decompose_method.R
\name{decompose_outlier}
\alias{decompose_outlier}
\title{Detect Outlier by decompose method}
\usage{
decompose_outlier(data, supply, key, year, qtr_key, cutoff = 1.5,
  mad_const = 1.4826, replace = NA)
}
\arguments{
\item{data:}{Th complete data frame or data table or tibble that contains the data}

\item{supply:}{Target attribute on which decomposition should happen}

\item{key:}{Key attributes in the table on which split should happen. For example: state_id, job_code_id}

\item{year:}{Year attribute of the data frame.}

\item{qtr_key:}{Attribute that contains the quarter value.}

\item{cutoff:}{The cutoff values against which the deviation will be checked. 
If the computed ratio is less than the cutoff, then the point if not an outlier. DEFAULT to 1.5}

\item{mad_const:}{Scale factor to calculate MAD values to maintain consistency. DEFAULT to 1.4826}

\item{replace:}{In the final column, the outliers will be replaced by this variable's value. DEFAULT to NA.}
}
\value{
A data frame with two additional attributes:\cr
spl_without_otl_dec: The target attribute in which all the outliers will be replaced by the replace variable\cr
otl_flag_dec: Outlier flag by decompose method. Outliers will be marked as 1.
}
\description{
This funciton is called to get the outlier by decomposition method.
To run this function, the data should already be decomposed. Use decompose_ts() method to decompose the series.
The function will group the data based on the key and then try Mean Absolute Deviation method to detect outlier.
MAD method will be applied on the complete series of random noise. 
The MAD values will be checked against the cutoff and marked as outlier\cr
Please note: In this method, if there are less than two data points for a perticular quarter, 
then the seasonality component of that perticular quarter may not be correct. 
Precautions should be taken for such cases.\cr
If there are many such cases then this should be emsembled with other methods in some way.
}
