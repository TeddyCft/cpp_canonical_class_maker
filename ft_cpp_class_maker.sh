#!/bin/bash

read -p "Class name ? " name
hppfile="src/class/$name.hpp"
cppfile="src/class/$name.cpp"
guard="${name^^}_HPP"
clr_red="\033[1;31m"
clr_green="\033[1;32m"
reset="\033[0m"

if [ -z "$name" ]; then
	exit 1
fi

if [ -f "$hppfile" ]; then
	echo -e "❌${clr_red} Class $name already exists.${reset}"
	exit 1
fi

mkdir -p src/class includes
touch $hppfile $cppfile
echo "#ifndef $guard
#define $guard

class $name
{
	private:

	public:

	$name(void);
	$name(const $name &copy);
	$name &operator=(const $name &og);
	~$name(void);
}		;

#endif" > $hppfile

echo "#include "'"'$name.hpp'"'"

//= Operator overloader
$name	&$name::operator=(const $name &og)
{
	//copy datas
	return (*this);
}

//Copy constructor
$name::$name(const $name &copy)
{ *this = copy ; }

//Default constructor
$name::$name(void)// : args(0), ...
{}

//Destructor
$name::~$name(void)
{}" > $cppfile

echo -e "✅${clr_green} Class $name successfully created !${reset}"
