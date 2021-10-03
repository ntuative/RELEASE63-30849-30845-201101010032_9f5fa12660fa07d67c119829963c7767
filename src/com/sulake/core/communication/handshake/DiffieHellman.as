package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_886:BigInteger;
      
      private var var_2183:BigInteger;
      
      private var var_1669:BigInteger;
      
      private var var_2303:BigInteger;
      
      private var var_1324:BigInteger;
      
      private var var_1668:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1324 = param1;
         this.var_1668 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1324.toString() + ",generator: " + this.var_1668.toString() + ",secret: " + param1);
         this.var_886 = new BigInteger();
         this.var_886.fromRadix(param1,param2);
         this.var_2183 = this.var_1668.modPow(this.var_886,this.var_1324);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1669 = new BigInteger();
         this.var_1669.fromRadix(param1,param2);
         this.var_2303 = this.var_1669.modPow(this.var_886,this.var_1324);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2183.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2303.toRadix(param1);
      }
   }
}
