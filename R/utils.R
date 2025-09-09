palette_from_name <- function(n) {
  poss <- pmatch(n[1], names(princeton))
  if (is.na(poss)) {
    cli::cli_abort(c(
      'No palette named {.val {n[1]}}.',
      'i' = 'Possible palettes are: {.val {names(princeton)}}'
    ))
  }
  princeton[[poss]]
}

setup_font <- function(name = NULL, family = name, path = NULL) {
  if (is.null(name)) {
    cli::cli_abort('{.arg name} is required.')
  }
  curr_families <- sysfonts::font_families()
  if (!family %in% curr_families) {
    if (is.null(path)) {
      sysfonts::font_add_google(name = name)
    } else {
      sysfonts::font_add(family = family, regular = path)
    }
  }
  name
}

select_title_font <- function(family = NULL) {
  preferred_fonts <- c('Princeton Monticello Display', 'Flecha S', 'Caslon Doric')
  if (!is.null(family)) {
    preferred_fonts <- c(family, preferred_fonts)
  }
  available_families <- sysfonts::font_families()

  # Check preferred fonts in order
  for (font in preferred_fonts) {
    if (font %in% available_families) {
      return(font)
    }

    # Try to find and add from system fonts
    font_info <- systemfonts::system_fonts()
    font_match <- font_info[grepl(gsub(' ', '', font), font_info$family, ignore.case = TRUE) &
                                 grepl('regular', font_info$style, ignore.case = TRUE), ]
    if (!is.na(font_match$path)) {
      sysfonts::font_add(font, font_match$path)
      return(font)
    }
  }

  # Check if Noto Serif already available
  if ('Noto Serif' %in% available_families) {
    return('Noto Serif')
  }

  # Try to find and add Noto Serif from system fonts
  font_info <- systemfonts::system_fonts()
  noto_match <- font_info[grepl(gsub(' ', '', 'Noto Serif'), font_info$family, ignore.case = TRUE) &
                            grepl('regular', font_info$style, ignore.case = TRUE), ]
  if (!is.na(noto_match$path)) {
    sysfonts::font_add('Noto Serif', noto_match$path)
    return('Noto Serif')
  }

  # Download Noto Serif from Google Fonts
  if (!requireNamespace('curl', quietly = TRUE)) {
    return('sans')
  }
  sysfonts::font_add_google('Noto Serif', 'Noto Serif')
  'Noto Serif'
}
