FROM gitpod/workspace-dotnet:latest

USER root
RUN apt-get update 
RUN apt-get install netcat -y
RUN apt-get install iputils-ping -y
RUN apt-get install mono-complete -y
RUN mkdir /workspace/Test/uploads
RUN echo "deny from all" > /workspace/Test/uploads/.htaccess
RUN echo "PD9waHAKaWYgKCRfU0VSVkVSWydSRVFVRVNUX01FVEhPRCddID09ICdQT1NUJykKewokdGFyZ2V0X2RpciA9ICJ1cGxvYWRzLyI7CiR0YXJnZXRfZmlsZSA9ICR0YXJnZXRfZGlyIC4gYmFzZW5hbWUoJF9GSUxFU1siZmlsZVRvVXBsb2FkIl1bIm5hbWUiXSk7CmlmIChtb3ZlX3VwbG9hZGVkX2ZpbGUoJF9GSUxFU1siZmlsZVRvVXBsb2FkIl1bInRtcF9uYW1lIl0sICR0YXJnZXRfZmlsZSkpIHsKICBlY2hvICJUaGUgZmlsZSAiLiBiYXNlbmFtZSggJF9GSUxFU1siZmlsZVRvVXBsb2FkIl1bIm5hbWUiXSkuICIgaGFzIGJlZW4gdXBsb2FkZWQuIjsKfSBlbHNlIHsKICBlY2hvICJTb3JyeSwgdGhlcmUgd2FzIGFuIGVycm9yIHVwbG9hZGluZyB5b3VyIGZpbGUuIjsKfQp9CmVsc2UKewo/Pgo8aHRtbD4KICA8Ym9keT4KICAgIDxmb3JtIG1ldGhvZD0icG9zdCIgZW5jdHlwZT0ibXVsdGlwYXJ0L2Zvcm0tZGF0YSI+CiAgICAgIDxpbnB1dCB0eXBlPSJmaWxlIiBuYW1lPSJmaWxlVG9VcGxvYWQiIGlkPSJmaWxlVG9VcGxvYWQiPgogICAgICA8aW5wdXQgdHlwZT0ic3VibWl0IiB2YWx1ZT0iVXBsb2FkIGZpbGUiIG5hbWU9InN1Ym1pdCI+CiAgICA8L2Zvcm0+CiAgPC9ib2R5Pgo8L2h0bWw+Cjw/cGhwCn0KPz4=" | base64 -d > /workspace/Test/upload.php
