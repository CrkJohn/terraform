provider "aws" {
  region = "us-east-1"
}


resource "aws_iam_user" "user" {
  name = "Jonny_user"
}


resource "aws_iam_policy" "terraform1" {

  name   = "Policy_name"
  policy = jsonencode(
    {
        "Version": "2012-10-17",
        "Statement": [
            {
            "Action": ["s3:ListAllMyBuckets"],
            "Effect": "Allow",
            "Resource": "*"
            }
        ]
    })
    
}

resource "aws_iam_user_policy_attachment" "name" {

    user = aws_iam_user.user.name
    policy_arn = aws_iam_policy.terraform1.arn
}
