#!/bin/bash

touch /tmp/service-restart.flg
chef-client
