#!/bin/bash
docker run -p 8000:8000 -v tubedata:/data -d prologic/tube
