<?php 
    class Perso {
        const PV_initial = 2000;
        private $PV; 
 
        public function __construct($PV = 'N/A') { // Paramètre optionnel
            if (!is_numeric($PV) || !($PV > 0 && $PV < 100000000)) 
                $this->PV = self::PV_initial;
            else 
                $this->PV = $PV;  
        }
        public function getPV() { 
            // Accesseurs
            return $this->PV;
        }
 
        public function isDead(){
            return $this->PV == 0;
        }
    }
 
    // Création d'une classe enfant de Perso 
    class Magicien extends Perso { 
        private $magie;
    }
 
    // Création d'une instance de classe 
    $perso = new Perso(1000);
 
    // Utilisation de l'objet 
    echo 'Votre personnage a ' . $perso->getPV() . ' PV.' . PHP_EOL;
 
    // Constantes de classes  
    echo 'Le PV par défaut attribué à un nouveau personnage est de ' . Perso::PV_initial . '.'; 
 
    // Destruction de l'objet 
    unset($perso);
?>