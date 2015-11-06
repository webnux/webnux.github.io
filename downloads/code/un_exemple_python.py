class Vector2D:
    def __init__(self, x, y):
        # On utilise un tuple pour stocker les coordonnées
        self.coords = (x, y)
 
    def __add__(self, other):
        # L'instruction a+b sera résolue comme a.__add__(b)
        # On construit un objet Vector2D à partir des coordonnées propres à l'objet, et à l'autre opérande
        return Vector2D(self.coords[0]+other.coords[0], self.coords[1]+other.coords[1])
 
    def __repr__(self):
        # L'affichage de l'objet dans l'interpréteur
        return "Vector2D(%s, %s)" %self.coords
 
a = Vector2D(1, 2)
b = Vector2D(3, 4)
print(a + b) # Vector2D(4, 6)