session=${1:-i3}

case $session in
	i3|i3wm		) exec i3;;
	budgie		) exec budgie-desktop;;
    gnome       ) exec gnome-session;;
    plasma      ) exec startplasma-x11;;

	*		) exec $1;;
esac
