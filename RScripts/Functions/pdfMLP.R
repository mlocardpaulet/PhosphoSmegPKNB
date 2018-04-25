pdfMLP <- function(plot, name, type) {
  # save pdf. name is the path and name of the figure, type is "portrait" or "landscape". plot is a plot or a list of plots
  if (type == "landscape") {
    pdf(name, useDingbats=FALSE, 11.69, 8.27)
  } else {
    pdf(name, useDingbats=FALSE, 8.27, 11.69)
  }
  if (class(plot)[1] == "gg") {
    print(plot)
  } else {
    for (el in plot) {
      print(el)
    }
  }
  dev.off()
}

pdfMLPManual <- function(plot, name, width, heigth) {
  # save pdf. name is the path and name of the figure, width and heigth. plot is a plot or a list of plots
    pdf(name, useDingbats=FALSE, width, heigth)
  if (class(plot)[1] == "gg") {
    print(plot)
  } else {
    for (el in plot) {
      print(el)
    }
  }
  dev.off()
}
