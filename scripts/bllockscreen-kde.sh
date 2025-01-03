#!/bin/bash
gdbus monitor -y -d org.freedesktop.login1 |
        while read x; do
            case "$x" in
                *"true"*)
                    curl -s http://localhost:8000/light/0/on?color=yellow > /dev/null;;
                *"false"*) curl -s http://localhost:8000/light/0/on?color=green > /dev/null;;
            esac
        done

