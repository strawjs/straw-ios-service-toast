.PHONY: doc doc-release release

doc:
	appledoc --project-name 'StrawServiceToast' --project-company 'strawjs.org' --company-id 'org.strawjs' --output doc/dev --create-html --no-create-docset StrawServiceToast

doc-release:
	appledoc --project-name 'StrawServiceToast' --project-company 'strawjs.org' --company-id 'org.strawjs' --output doc/v0.1.1 --create-html --no-create-docset StrawServiceToast

release:
	pod trunk push StrawServiceLocale.podspec
