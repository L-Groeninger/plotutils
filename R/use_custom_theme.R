

#' Barlow theme function
#'
#' This function builds upon the ggplot2::theme_minimal() theme
#' and adds/rearranges some grid elements.
#'
#' @param base_size Defining the base size of the font.
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' library(showtext)
#' showtext_auto() # Necessary for certain graphics devices to display the custom font
#'
#' ggplot(mtcars, aes(wt, mpg)) + geom_point() + theme_barlow()
#'
theme_barlow <- function(base_size = 14) {
  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = "Barlow"
  ) +
    ggplot2::theme(
      axis.text = ggplot2::element_text(size = ggplot2::rel(.9),
                               family = "Barlow"),
      axis.title = ggplot2::element_text(
        family = "Barlow",
        hjust = 0.5
      ),
      legend.background = ggplot2::element_blank(),
      legend.key = ggplot2::element_blank(),
      legend.title = ggplot2::element_text(family = "Barlow"),
      legend.margin = ggplot2::margin(base_size / 3, base_size / 3, base_size / 3, base_size / 3),
      legend.position = "top",
      panel.grid = ggplot2::element_line(colour = "#cccccc", size = .2),
      panel.grid.minor = ggplot2::element_blank(),
      panel.spacing = grid::unit(base_size * 1.3, "pt"),
      plot.title = ggtext::element_markdown(
        family = "Barlow",
        size = ggplot2::rel(1.3),
        lineheight = 1.15,
        margin = grid::unit(c(0, 0, base_size * 1.3, 0), "pt"),
      ),
      plot.subtitle = ggtext::element_markdown(
        family = "Barlow",
        size = ggplot2::rel(1.05),
        lineheight = 1.15,
        margin = grid::unit(c(-base_size * 0.44, 0, base_size * 1.3, 0), "pt")
      ),
      plot.caption = ggtext::element_markdown(
        family = "Barlow",
        lineheight = 1.15,
        margin = grid::unit(c(base_size * 1.3, 0, 0, 0), "pt")
      ),
      plot.tag = ggtext::element_markdown(
        family = "Barlow"
      ),
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.margin = ggplot2::margin(30, 30, 30, 30),
      strip.text = ggplot2::element_text(
        family = "Barlow",
        size = ggplot2::rel(1.05),
        hjust = 0
      )
    )
}

#' Applying the custom theme function
#'
#' This function is just a wrapper around the theme_barlow() function.
#' It applies the theme globally and makes sure that the
#' required "Barlow" font is installed.
#'
#' @param base_size Defining the base size of the font.
#'
#' @return
#' @export
#'
#' @examples
#' set_custom_theme(base_size = 16)
#'
set_custom_theme <- function(base_size = 14) {

  sysfonts::font_add_google("Barlow", "Barlow")
  showtext::showtext_auto()

  ggplot2::theme_set(theme_barlow(base_size = base_size))
}



















