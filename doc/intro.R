## ----eval=FALSE---------------------------------------------------------------
#  gibbsR <- function(N, thin) {
#    mat <- matrix(nrow = N, ncol = 2)
#    x <- y <- 0
#    for (i in 1:N) {
#      for (j in 1:thin) {
#        x <- rgamma(1, 3, y * y + 4)
#        y <- rnorm(1, 1 / (x + 1), 1 / sqrt(2 * (x + 1)))
#      }
#      mat[i, ] <- c(x, y)
#    }
#    mat
#  }

## ----eval=FALSE---------------------------------------------------------------
#  NumericMatrix gibbsC(int N, int thin) {
#    NumericMatrix mat(N, 2);
#    double x = 0, y = 0;
#    for(int i = 0; i < N; i++) {
#      for(int j = 0; j < thin; j++) {
#        x = rgamma(1, 3, 1 / (y * y + 4))[0];
#        y = rnorm(1, 1 / (x + 1), 1 / sqrt(2 * (x + 1)))[0];
#      }
#      mat(i, 0) = x;
#      mat(i, 1) = y;
#    }
#    return(mat);
#  }

