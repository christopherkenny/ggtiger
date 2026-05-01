# Scales consistent with Princeton Brand Template

Scales consistent with Princeton Brand Template

## Usage

``` r
scale_color_princeton_c(palette = "sequential_orange", ...)

scale_fill_princeton_c(
  palette = "sequential_orange",
  na.color = "#5b575d",
  ...
)

scale_color_princeton_b(
  palette = "sequential_orange",
  na.color = "#5b575d",
  ...
)

scale_fill_princeton_b(
  palette = "sequential_orange",
  na.color = "#5b575d",
  ...
)

scale_color_princeton_d(palette = "core", ...)

scale_fill_princeton_d(palette = "core", ...)

scale_colour_princeton_d(palette = "core", ...)

scale_colour_princeton_c(palette = "sequential_orange", ...)

scale_colour_princeton_b(
  palette = "sequential_orange",
  na.color = "#5b575d",
  ...
)
```

## Arguments

- palette:

  Name of the palette to use. See
  [princeton](http://christophertkenny.com/ggtiger/reference/princeton.md)
  for available palettes.

- ...:

  Additional arguments to pass to
  [ggplot2::binned_scale](https://ggplot2.tidyverse.org/reference/binned_scale.html)
  for `_b`,
  [ggplot2::continuous_scale](https://ggplot2.tidyverse.org/reference/continuous_scale.html)
  for `_c`, or
  [ggplot2::discrete_scale](https://ggplot2.tidyverse.org/reference/discrete_scale.html)
  for `_d`

- na.color:

  Color to use for `NA` values (only for `_b` scales)

## Value

a `ggplot` scale object

## Examples

``` r
library(ggplot2)

ggplot(mpg, aes(cty)) +
  geom_density(aes(fill = factor(cyl)), alpha = 0.8) +
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
