import boto3

client = boto3.client('comprehend')

response = client.detect_sentiment(
    Text="The service is fast and reliable!",
    LanguageCode='en'
)

print("Sentiment:", response['Sentiment'])
print("Scores:", response['SentimentScore'])
