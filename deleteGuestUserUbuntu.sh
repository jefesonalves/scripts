#!/bin/bash
echo  "Excluir a conta guest user do Ubuntu."
sudo sh -c ‘printf “[Seat:*]\nallow-guest=false\n” >/etc/lightdm/lightdm.conf.d/50-no-guest.conf’
