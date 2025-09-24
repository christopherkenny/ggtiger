
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggtiger <a href="http://christophertkenny.com/ggtiger/"><img src="man/figures/logo.png" align="right" height="138" alt="ggtiger website" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/christopherkenny/ggtiger/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/christopherkenny/ggtiger/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`ggtiger` offers a setup for `ggplot2` that follows the Princeton
University brand guidelines, where possible. As some fonts must be
sourced from the [Office of
Communications](https://communications.princeton.edu/guides-tools/logo-graphic-identity),
this will search for them locally first. If none are available, it uses
secondary fonts from the brand guidelines and downloads them from Google
Fonts if necessary. It contains several color palettes, as designed for
“infographics” by the Office of Communications.

## Installation

You can install the development version of `ggtiger` from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("christopherkenny/ggtiger")
```

## Example

This is a package attempts to capture the Princeton University brand
guidelines for making plots in `ggplot2`.

``` r
library(ggtiger)
library(ggplot2)

mpg |>
  ggplot() +
  geom_density(aes(x = cty, fill = factor(cyl)), alpha = 0.8) +
  labs(
    title = 'Density plot',
    subtitle = 'City Mileage Grouped by Number of cylinders',
    caption = 'Source: mpg',
    x = 'City Mileage',
    fill = '# Cylinders'
  ) +
  facet_wrap(~ (hwy > 29)) +
  scale_fill_princeton_d() +
  theme_princeton()
```

<img src="man/figures/README-example-1.png" width="100%" />

All color schemes are included in `princeton`, which is a list of
[palette](https://github.com/christopherkenny/palette) vectors.

    #> core

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

    #> neutrals

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

    #> coreplus

<img src="man/figures/README-unnamed-chunk-2-3.png" width="100%" />

    #> categorical

<img src="man/figures/README-unnamed-chunk-2-4.png" width="100%" />

    #> diverging

<img src="man/figures/README-unnamed-chunk-2-5.png" width="100%" />

    #> sequential_orange

<img src="man/figures/README-unnamed-chunk-2-6.png" width="100%" />

    #> sequential_red

<img src="man/figures/README-unnamed-chunk-2-7.png" width="100%" />

    #> sequential_olive

<img src="man/figures/README-unnamed-chunk-2-8.png" width="100%" />

    #> sequential_sky_blue

<img src="man/figures/README-unnamed-chunk-2-9.png" width="100%" />

    #> sequential_royal_blue

<img src="man/figures/README-unnamed-chunk-2-10.png" width="100%" />

    #> sequential_grey_blue

<img src="man/figures/README-unnamed-chunk-2-11.png" width="100%" />

    #> sequential_yellow

<img src="man/figures/README-unnamed-chunk-2-12.png" width="100%" />

    #> sequential_pink

<img src="man/figures/README-unnamed-chunk-2-13.png" width="100%" />

    #> sequential_grey

<img src="man/figures/README-unnamed-chunk-2-14.png" width="100%" />

    #> sequential_magenta

<img src="man/figures/README-unnamed-chunk-2-15.png" width="100%" />
