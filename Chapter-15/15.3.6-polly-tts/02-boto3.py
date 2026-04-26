import boto3

polly = boto3.client('polly')

response = polly.synthesize_speech(
    Text='Building on AWS is simple and powerful!',
    OutputFormat='mp3',
    VoiceId='Matthew'
)

with open('speech.mp3', 'wb') as f:
    f.write(response['AudioStream'].read())
