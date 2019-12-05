#!/bin/bash

# Setup variables
group='deletemeresourcegrppls'

groupExists=$(az group exists -n $group)

echo $groupExists

if $groupExists ; then
    az group delete --name $group
    echo 'Group destroyed'
else
    echo 'Group not found'
fi