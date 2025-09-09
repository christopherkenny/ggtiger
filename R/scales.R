#' Scales consistent with Princeton Brand Template
#'
#' @param palette Name of the palette to use. See [princeton] for available palettes.
#' @param na.color Color to use for `NA` values (only for `_b` scales)
#' @param ... Additional arguments to pass to [ggplot2::binned_scale] for `_b`,
#' [ggplot2::continuous_scale] for `_c`, or [ggplot2::discrete_scale] for `_d`
#'
#' @return a `ggplot` scale object
#'
#' @rdname scale_princeton
#' @export
#' @concept princeton
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mpg, aes(cty)) +
#'   geom_density(aes(fill = factor(cyl)), alpha = 0.8) +
#'   labs(
#'     title = 'Density plot',
#'     subtitle = 'City Mileage Grouped by Number of cylinders',
#'     caption = 'Source: mpg',
#'     x = 'City Mileage',
#'     fill = '# Cylinders'
#'   ) +
#'   facet_wrap(~ (hwy > 29)) +
#'   scale_fill_princeton_d()
#'
scale_color_princeton_c <- function(palette = 'sequential_orange', ...) {
  pal <- palette_from_name(palette)
  ggplot2::continuous_scale(
    'color',
    palette = scales::pal_gradient_n(pal),
    ...
  )
}

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_fill_princeton_c <- function(palette = 'sequential_orange', na.color = '#5b575d', ...) {
  pal <- palette_from_name(palette)
  ggplot2::continuous_scale(
    'fill',
    palette = scales::pal_gradient_n(pal),
    ...
  )
}

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_color_princeton_b <- function(palette = 'sequential_orange', na.color = '#5b575d', ...) {
  pal <- palette_from_name(palette)
  ramp <- scales::colour_ramp(colors = pal, na.color = na.color)
  ggplot2::binned_scale('color', palette = ramp, ...)
}

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_fill_princeton_b <- function(palette = 'sequential_orange', na.color = '#5b575d', ...) {
  pal <- palette_from_name(palette)
  ramp <- scales::colour_ramp(colors = pal, na.color = na.color)
  ggplot2::binned_scale('fill', palette = ramp, ...)
}

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_color_princeton_d <- function(palette = 'core', ...) {
  pal <- palette_from_name(palette)
  ggplot2::discrete_scale(
    aesthetics = 'color',
    palette = palette::palette_function(pal), ...
  )
}

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_fill_princeton_d <- function(palette = 'core', ...) {
  pal <- palette_from_name(palette)
  ggplot2::discrete_scale(
    aesthetics = 'fill', ...,
    palette = palette::palette_function(pal)
  )
}

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_colour_princeton_d <- scale_color_princeton_d

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_colour_princeton_c <- scale_color_princeton_c

#' @rdname scale_princeton
#' @export
#' @concept princeton
scale_colour_princeton_b <- scale_color_princeton_b
