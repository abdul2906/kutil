path=/usr/bin

.DEFAULT_GOAL := install

install:
	@cp -vf kutil $(path)/kutil
	@chmod -v o+rx,g+rx,u+rwx $(path)/kutil	
	@mkdir -vp /etc/kutil
	@cp -vf config/* /etc/kutil/
	@chmod -v 444 /etc/kutil/configuration.defaults
	@echo ""
	@echo "Please don't forget to update the configuration at /etc/kutil/configuration"

uninstall:
	@rm -vf $(path)/kutil
	@rm -vrf /etc/kutil

