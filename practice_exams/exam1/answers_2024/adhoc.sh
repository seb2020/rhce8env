ansible all -m ansible.builtin.group -a "name=automation" -b -k -u root
ansible all -m ansible.builtin.user -a "name=automation group=automation groups=wheel append=yes" -b -k -u root


ansible all -m ansible.builtin.lineinfile -a "create=yes path=/home/automation/.ssh/authorized_keys owner=automation group=automation mode=0600 line='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCUokCekiBJXKGMxn19sb1MflJy9dqNFG/unncxJniE8YvtGGzeZcOvW5DcXuvUTjuxxqZjIUar4/1ifpGrfpm/JUJfYqjJ3rS3Ig+KzBw6X1E280W/+1Wace5m82HAA2V6BsH9LneuOsIq8OHWkbgbeWbnZ9kabWLY5vdtIm4uxKEQjrxV245W8Ynnf/XTXIjQbwUbNbsFHxs3LPF2AFpWVFGU4EoIQfEYqY27uyNuZh2nzigGT944k69R335bX5neqvsdqe8KFFFNUECLXBMfLOWOqMjP4MN4lXSL5zoIledNt/O76qOoItKvPJ/Httgd38gnmoh7cL46fMF8/i6eaj2kGIpjuDeXKMvCj25sPZZLrmEkQxNFk8SmYzK+i8g1/w3Tg7/F200w02utGIAZR1nybxV+gOr9BL2Skb5KOjvm9wE/HKEFAUHzKINz/OFx9TbTUymlvfeiEO3qBx5KWTHti4equPBbHBAexOG7RxD2hRKu7HDwlvFb7Tx5IBM= automation@vbox'" -b -k -u root

ansible all -m ansible.builtin.lineinfile -a "create=yes path=/etc/sudoers.d/automation owner=root group=root mode=0600 line='%automation ALL=(ALL) NOPASSWD: ALL'" -b -k -u root
