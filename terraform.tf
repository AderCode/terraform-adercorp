resource "aws_budgets_budget" "general_budget" {
    budget_type = "COST"
    limit_amount = 100.0
    limit_unit = "USD"
    time_period_start = "2024-01-01_00:00"
    time_period_end = "2024-12-31_23:59"
    time_unit = "MONTHLY"

    notification {
        comparison_operator = "GREATER_THAN"
        threshold = 80.0
        threshold_type = "PERCENTAGE"
        notification_type = "ACTUAL"

        subscriber_email_addresses = ["aws_alerts@aderhold.io"]
    }
}