#' Title
#'
#' @param x
#' @param especies
#' @param genes
#'
#' @return
#' @export
#'
#' @examples
subset_heatmap <- function(x, especies = NULL, genes = NULL) {
  # subset matrix
  x_subset <- x[genes,especies]

  # plot heatmap
  ComplexHeatmap::Heatmap(x_subset,
                          cluster_columns = FALSE,
                          heatmap_legend_param = list(title = "log2"))
}


subset_heatmap(expresion_genes,
               especies = c("especie_a", "especie_b","especie_c"),
               genes = c("gene_d","gene_e","gene_f"))


subset_heatmap_filtered <- function(x,threshold) {
  # subset matrix
  x_subset<-which(expresion_genes >= threshold,arr.ind = TRUE)
  # plot heatmap
  ComplexHeatmap::Heatmap(x_subset,
                          cluster_columns = FALSE,
                          heatmap_legend_param = list(title = "log2"))
}


