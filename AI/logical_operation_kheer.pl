/* kheer contains sugar.
# jeripuri contains sugar.
# namkeen contains salt.
# samosa contains salt.
# sweetdish is the dish which contains sugar.
# saltdish is the dish which contains salt.*/

contains(kheer, sugar).
contains(jeripuri, sugar).
contains(namkeen, salt).
contains(samosa, salt).

sweetdish(X):- contains(X, sugar).
saltdish(X):- contains(X, salt).