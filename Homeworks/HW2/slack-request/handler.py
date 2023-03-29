import json
def handle(req):
    data = {
        "text": "Serverless Message",
        "attachments": [{
            "title": "COEN 241: Envisioning the limitless possibilities of Cloud Computing",
            "fields": [{
                "title": "Exceptional Level",
                "value": "100",
                "short": True
            }],
            "author_name": "Disha Patel",
            "author_icon": "https://github.com/disha0909",
            "image_url": "https://hub.docker.com/repository/docker/dpatel5/slack-request"
        },
        {
            "title": "About COEN 241",
            "text": "There is no class quite like COEN 241 -it's truly exceptional!"
        },
        {
            "fallback": "Do you believe COEN 241 is a class that others should take?",
            "title": "Do you believe COEN 241 is a class that others should take?",
            "callback_id": "response123",
            "color": "#3AA3E3",
            "attachment_type": "default",
            "actions": [
                {
                    "name": "recommend",
                    "text": "Of Course!",
                    "type": "button",
                    "value": "recommend"
                },
                {
                    "name": "definitely",
                    "text": "Most Definitely!",
                    "type": "button",
                    "value": "definitely"
                }
            ]
        }]
    }
    return json.dumps(data)
