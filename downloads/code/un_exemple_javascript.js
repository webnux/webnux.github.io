 function MonPrototype() {
   this.a = 1;
   this.b = function() {
     return 'prototype';
   };
   this.e = 3;
 }
 function MaClasse() {
   this.c = 2;
   this.d = function() {
     return 'classe';
   };
 
   this.e = 4;
 }
 
 MaClasse.prototype = new MonPrototype();
 
 monObjet = new MaClasse();
 
 monObjet.a;   // 1
 monObjet.b(); // 'prototype'
 monObjet.c;   // 2
 monObjet.d(); // 'classe'
 monObjet.e;   // 4