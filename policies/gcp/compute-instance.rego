package main
max_hourly_cost = 0.01  # Set hourly cost limit
max_monthly_cost = 0.02  # Set monthly cost limit

deny[msg] {
  project := input.projects[_]
  hourly_cost := to_number(project.breakdown.totalHourlyCost)
  monthly_cost := to_number(project.breakdown.totalMonthlyCost)
  hourly_cost > max_hourly_cost
  msg = sprintf("Project %v exceeds the hourly spending limit. Hourly cost: %v, Limit: %v", [project.name, hourly_cost, max_hourly_cost])
}

deny[msg] {
  project := input.projects[_]
  monthly_cost > max_monthly_cost
  msg = sprintf("Project %v exceeds the monthly spending limit. Monthly cost: %v, Limit: %v", [project.name, monthly_cost, max_monthly_cost])
}