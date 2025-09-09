#' Princeton Color Palette
#'
#' @format A list of [palette::palette] vectors
#' @export
#'
#' @examples
#' princeton$core
princeton <- list(
  core = palette::palette(c(
    '#e98338', '#092264', '#89130d', '#5b0f58', '#19460e',
    '#aac7da', '#d9d1cb', '#d9d7e6', '#d5deda', '#7cdaf3',
    '#f5a5f9', '#c9a7fa', '#8ae168'
  )),
  neutrals = palette::palette(c(
    '#ffffff', '#afafaf', '#5b575d', '#010101'
  )),
  coreplus = palette::palette(c(
    '#1534ec', '#b31a56', '#7a2ad6', '#2d7827'
  )),
  categorical = palette::palette(c(
    '#e98136', '#89120d', '#c2d0c5', '#092265', '#7bdaf2',
    '#cee7f3', '#f7c253', '#f49dec', '#a3a3a3', '#bf1b4d'
  )),
  diverging = palette::palette(c(
    '#b25821', '#e98136', '#e1ad74', '#d6cbaa',
    '#d5ddd9',
    '#afcbce', '#6092cf', '#1435d9', '#241ca3'
  )),
  sequential_orange = palette::palette(c(
    '#672F0C', '#974616', '#B7581F', '#D46C2B', '#E98136', '#EC9754',
    '#EFAB76', '#F3C198', '#F7D6BC', '#FCECDF'
  )),
  sequential_red = palette::palette(c(
    '#2F0403', '#470605', '#680C09', '#89120D', '#AB2A27', '#D23F3C',
    '#DB615F', '#E99291', '#F0BBBB', '#F8DCDB'
  )),
  sequential_olive = palette::palette(c(
    '#242B25', '#363B37', '#4D544E', '#646D66', '#7C867E', '#939F96',
    '#AAB7AD', '#C2D0C5', '#D7E1D9', '#ECF0EC'
  )),
  sequential_sky_blue = palette::palette(c(
    '#102D2D', '#274947', '#366564', '#58A1A4', '#5BC1CB', '#69D1E3',
    '#7BDAF2', '#B2EAED', '#CFECED', '#E3EFEF'
  )),
  sequential_royal_blue = palette::palette(c(
    '#0A173B', '#11235B', '#18307A', '#1E3D9A', '#2449BA', '#3C63CC',
    '#5E7ED8', '#889FE6', '#A7B9EC', '#CDD5F2'
  )),
  sequential_grey_blue = palette::palette(c(
    '#26363A', '#2D444B', '#45646F', '#5C8190', '#759AA9', '#8DB2C0',
    '#B2D3E1', '#CEE7F3', '#E1F0F7', '#F4FAFD'
  )),
  sequential_yellow = palette::palette(c(
    '#4E3812', '#73541B', '#9A6D25', '#C68C31', '#E5AD45', '#F7C253',
    '#F9CE72', '#FADA93', '#FCE6B7', '#FDF2DA'
  )),
  sequential_pink = palette::palette(c(
    '#5B2758', '#753872', '#964696', '#B559AC', '#CD6CC6', '#E484DD',
    '#F49DEC', '#F6B4F1', '#F9CBF5', '#FBE3FA'
  )),
  sequential_grey = palette::palette(c(
    '#29292A', '#3F3E40', '#555456', '#6B696C', '#817F82', '#969597',
    '#ACABAD', '#C1C0C2', '#D7D6D7', '#ECECEC'
  )),
  sequential_magenta = palette::palette(c(
    '#340316', '#4E0621', '#740C32', '#94133F', '#BF1B4D', '#D72F6D',
    '#E4568F', '#E776AA', '#F19BC8', '#F9CDE0'
  ))
)
