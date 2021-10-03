package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1755:int = 0;
      
      public static const const_1435:int = 1;
      
      public static const const_1364:int = 2;
      
      public static const const_1655:int = 3;
      
      public static const const_1721:int = 4;
      
      public static const const_1634:int = 5;
      
      public static const const_1400:int = 10;
      
      public static const const_1658:int = 11;
      
      public static const const_1718:int = 12;
      
      public static const const_1644:int = 13;
      
      public static const const_1624:int = 16;
      
      public static const const_1772:int = 17;
      
      public static const const_1654:int = 18;
      
      public static const const_1691:int = 19;
      
      public static const const_1773:int = 20;
      
      public static const const_1827:int = 22;
      
      public static const const_1731:int = 23;
      
      public static const const_1810:int = 24;
      
      public static const const_1623:int = 25;
      
      public static const const_1637:int = 26;
      
      public static const const_1684:int = 27;
      
      public static const const_1806:int = 28;
      
      public static const const_1695:int = 29;
      
      public static const const_1822:int = 100;
      
      public static const const_1705:int = 101;
      
      public static const const_1793:int = 102;
      
      public static const const_1649:int = 103;
      
      public static const const_1767:int = 104;
      
      public static const const_1741:int = 105;
      
      public static const const_1627:int = 106;
      
      public static const const_1725:int = 107;
      
      public static const const_1783:int = 108;
      
      public static const const_1799:int = 109;
      
      public static const const_1697:int = 110;
      
      public static const const_1735:int = 111;
      
      public static const const_1613:int = 112;
      
      public static const const_1815:int = 113;
      
      public static const const_1779:int = 114;
      
      public static const const_1679:int = 115;
      
      public static const const_1674:int = 116;
      
      public static const const_1780:int = 117;
      
      public static const const_1652:int = 118;
      
      public static const const_1676:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1435:
            case const_1400:
               return "banned";
            case const_1364:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
