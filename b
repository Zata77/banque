class Produit:
    nbr_produit = 0
    def _init_(self, reference, designation, prix_achat, prix_vente,stock):
        self.__reference = reference
        self.__designation = designation
        self.__prix_achat = prix_achat
        self.__prix_vente = prix_vente
        self.__stock = stock
        Produit.nbr_produit += 1 
      
    def get_reference(self):
        return self.__reference
       
      
    def set_reference(self,new_reference):
        self.__reference = new_reference
      
    def get_designation(self):
        return self.__designation
        
    def set_designation(self,new):
        self.__designation = new
      
    def get_stock(self):
        return self.__stock
    
    def set_stock(self,nouveau_stock):
        self._stock = nouveau_stock

    def get_prix_achat(self):
        return self._prix_achat

    def set_prix_achat(self, nouveau_prix):
        self._prix_achat = nouveau_prix

    def get_prix_vente(self):
        return self._prix_vente

    def set_prix_vente(self, nouveau_prix):
        self._prix_vente = nouveau_prix

    def obtenir_stock(self):
        return self.stock

    def str(self):
        return (f"""Référence: {self.__reference}
Désignation: {self.__designation}
Prix d'achat: {self.__prix_achat}
Prix de vente: {self.__prix_vente}
Stock: {self.__stock}""")

    def augmenter_stock(self, quantite):
        self.stock += quantite

    def diminuer_stock(self, quantite):
        if quantite <= self.stock:
            self.stock -= quantite
        else:
            print("Pas assez de stock pour diminuer.")
            
            
    def eq(self, other):
        if (self.get_reference == other.get_reference) :
            return True
        else:
            return False

class Commande:
    def _init_(self, date_creation,quantite,product):
        self.__date_creation = date_creation
        self.__quantite = quantite 
        self.__product = product
        
        
    def get_date_creation(self):
        return self.__date_creation
        
    def set_date_creation(self,newdate):
        self.__date_reation = mewdate
        
    def get_quantite(self):
        return self.__quantite
        
    def set_quantite(self,newquant):
        self.__quantite = newquant

        
    def set_product(self,):
        return self.__product
        
        
    def set_product(self,newprod):
        self.__product = newprod


    
    def obtenir_details_commande(self):
        print(f"Date de la commande: {self.__date_creation}")
        print(f" Référence du produit: {self.__product}")
        print(f" la quantites est : {self.__quantite}")
        
produit1 = Produit(1111, 'good', 19.5, 10.0,89)
produit2 = Produit(1111, 'nice', 23.6, 14.0,88)
print(produit1.str())
print(produit2.str())
print("Nombre de produit:",Produit.nbr_produit)
commande1 = Commande('2026-06-16',20,1)
commande1.obtenir_details_commande()
print(produit1.eq(produit2))
