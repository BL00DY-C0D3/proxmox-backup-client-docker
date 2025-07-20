#!/bin/bash

CUSTOM_HOST_STRING=""
if [ ! -z "$CUSTOM_HOST" ]; then
    CUSTOM_HOST_STRING="--backup-id $CUSTOM_HOST"
fi
NAMESPACE_STRING=""
if [ ! -z "$NAMESPACE" ]; then
    NAMESPACE_STRING="--ns $NAMESPACE"
fi

echo "------------------------------------------------------------"
proxmox-backup-client backup $BACKUP_TARGETS $CUSTOM_HOST_STRING $NAMESPACE_STRING
echo "------------------------------------------------------------"
