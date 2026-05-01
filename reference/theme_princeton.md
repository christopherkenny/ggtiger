# A theme based on Princeton University design guidelines

A theme based on Princeton University design guidelines

## Usage

``` r
theme_princeton(
  princeton_font = TRUE,
  title_family = NULL,
  base_family = NULL,
  ...
)
```

## Arguments

- princeton_font:

  Should Princeton fonts be used if available?

- title_family:

  Font family for titles. It will search locally for fonts

- base_family:

  Font family for base text

- ...:

  Additional arguments to pass to
  [`ggplot2::theme()`](https://ggplot2.tidyverse.org/reference/theme.html)

## Value

a `ggplot2` theme object

## Examples

``` r
theme_princeton()
#> <theme> List of 10
#>  $ text             : <ggplot2::element_text>
#>   ..@ family       : chr "Libre Franklin"
#>   ..@ face         : NULL
#>   ..@ italic       : chr NA
#>   ..@ fontweight   : num NA
#>   ..@ fontwidth    : num NA
#>   ..@ colour       : chr "#010101"
#>   ..@ size         : NULL
#>   ..@ hjust        : NULL
#>   ..@ vjust        : NULL
#>   ..@ angle        : NULL
#>   ..@ lineheight   : NULL
#>   ..@ margin       : NULL
#>   ..@ debug        : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ title            : <ggplot2::element_text>
#>   ..@ family       : chr "Noto Serif"
#>   ..@ face         : NULL
#>   ..@ italic       : chr NA
#>   ..@ fontweight   : num NA
#>   ..@ fontwidth    : num NA
#>   ..@ colour       : NULL
#>   ..@ size         : num 20
#>   ..@ hjust        : NULL
#>   ..@ vjust        : NULL
#>   ..@ angle        : NULL
#>   ..@ lineheight   : NULL
#>   ..@ margin       : NULL
#>   ..@ debug        : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ legend.background: <ggplot2::element_rect>
#>   ..@ fill         : chr "#ffffff"
#>   ..@ colour       : logi NA
#>   ..@ linewidth    : NULL
#>   ..@ linetype     : NULL
#>   ..@ linejoin     : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ panel.background : <ggplot2::element_rect>
#>   ..@ fill         : chr "#ffffff"
#>   ..@ colour       : chr "#ffffff"
#>   ..@ linewidth    : NULL
#>   ..@ linetype     : NULL
#>   ..@ linejoin     : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ panel.border     : <ggplot2::element_rect>
#>   ..@ fill         : logi NA
#>   ..@ colour       : chr "#ffffff"
#>   ..@ linewidth    : num 1.2
#>   ..@ linetype     : NULL
#>   ..@ linejoin     : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ panel.grid.major : <ggplot2::element_line>
#>   ..@ colour       : chr "#afafaf"
#>   ..@ linewidth    : NULL
#>   ..@ linetype     : NULL
#>   ..@ lineend      : NULL
#>   ..@ linejoin     : NULL
#>   ..@ arrow        : logi FALSE
#>   ..@ arrow.fill   : chr "#afafaf"
#>   ..@ inherit.blank: logi FALSE
#>  $ panel.grid.minor : <ggplot2::element_line>
#>   ..@ colour       : chr "#afafaf"
#>   ..@ linewidth    : num 0.5
#>   ..@ linetype     : NULL
#>   ..@ lineend      : NULL
#>   ..@ linejoin     : NULL
#>   ..@ arrow        : logi FALSE
#>   ..@ arrow.fill   : chr "#afafaf"
#>   ..@ inherit.blank: logi FALSE
#>  $ plot.background  : <ggplot2::element_rect>
#>   ..@ fill         : chr "#ffffff"
#>   ..@ colour       : NULL
#>   ..@ linewidth    : NULL
#>   ..@ linetype     : NULL
#>   ..@ linejoin     : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ strip.background : <ggplot2::element_rect>
#>   ..@ fill         : chr "#010101"
#>   ..@ colour       : chr "#010101"
#>   ..@ linewidth    : NULL
#>   ..@ linetype     : NULL
#>   ..@ linejoin     : NULL
#>   ..@ inherit.blank: logi FALSE
#>  $ strip.text       : <ggplot2::element_text>
#>   ..@ family       : NULL
#>   ..@ face         : NULL
#>   ..@ italic       : chr NA
#>   ..@ fontweight   : num NA
#>   ..@ fontwidth    : num NA
#>   ..@ colour       : chr "#e98338"
#>   ..@ size         : num 14
#>   ..@ hjust        : NULL
#>   ..@ vjust        : NULL
#>   ..@ angle        : NULL
#>   ..@ lineheight   : NULL
#>   ..@ margin       : NULL
#>   ..@ debug        : NULL
#>   ..@ inherit.blank: logi FALSE
#>  @ complete: logi FALSE
#>  @ validate: logi TRUE
```
