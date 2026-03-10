functions {
}
data {
  int<lower=1> N;  
  array[N] int total;  
  array[N] int active;  
  int<lower=1> K;  
  matrix[N, K] X; 
  int<lower=1> N_index;
  array[N] int index;
}
transformed data {
  real s_index = sqrt(N_index / (N_index - 1.0));
}
parameters {
  vector[K] b_total;  
  vector<upper=0>[K] b_proportion;
  real<lower=0> shape;  
  sum_to_zero_vector[N_index] r_index;
  real<lower=0> sigma_index;
}
transformed parameters {  
}
model {  
  vector[N] nlp_total = rep_vector(0.0, N);  
  vector[N] mu_total;  
  vector[N] nlp_proportion = rep_vector(0.0, N);  
  vector[N] mu_active;
  
  nlp_total += X * b_total;
  nlp_proportion += X * b_proportion;

  for (n in 1:N) {    
    mu_total[n] = (nlp_total[n] + r_index[index[n]]);    
    mu_active[n] = (mu_total[n] + nlp_proportion[n]);
  }
  
  target += neg_binomial_2_log_lpmf(total | mu_total, shape);
  target += neg_binomial_2_log_lpmf(active | mu_active, shape); 
  target += normal_lpdf(r_index | 0, s_index * sigma_index);
  target += inv_gamma_lpdf(shape | 0.4, 0.3);
}
generated quantities {
}
