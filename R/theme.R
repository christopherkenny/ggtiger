#' A theme based on Princeton University design guidelines
#'
#' @param princeton_font Should Princeton fonts be used if available?
#' @param title_family Font family for titles. It will search locally for fonts
#' @param base_family Font family for base text
#' @param ... Additional arguments to pass to [ggplot2::theme()]
#'
#' @returns a `ggplot2` theme object
#' @export
#'
#' @examples
#' theme_princeton()
theme_princeton <- function(princeton_font = TRUE, title_family = NULL,
                            base_family = NULL, ...) {
  if (isTRUE(princeton_font)) {
    title_font <- select_title_font(family = title_family)
    base_font <- setup_font(name = 'Libre Franklin')
  } else {
    title_font <- 'sans'
    base_font <- 'sans'
  }

  ggplot2::theme(
    plot.background = ggplot2::element_rect(fill = '#ffffff'),
    text = ggplot2::element_text(color = '#010101', family = base_font),
    title = ggplot2::element_text(size = 20, family = title_font),
    panel.grid.minor = ggplot2::element_line(color = '#afafaf', linewidth = 0.5),
    panel.grid.major = ggplot2::element_line(color = '#afafaf'),
    panel.border = ggplot2::element_rect(fill = NA, color = '#ffffff', linewidth = 1.2),
    panel.background = ggplot2::element_rect(fill = '#ffffff', color = '#ffffff'),
    legend.background = ggplot2::element_rect(fill = '#ffffff', color = NA),
    strip.background = ggplot2::element_rect(fill = '#010101', colour = '#010101'),
    strip.text = ggplot2::element_text(colour = '#e98338', size = 10),
    ...
  )
}
