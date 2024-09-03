#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Banco004()

    Local aArea := GetArea()
    Local aDados := {}
    Private lMSErrorAuto := .F. 
    
    aDados := {;
                {"B1_COD", "11111", Nil},;
                {"B1_DESC", "PRODUTO TESTE", Nil},;
                {"B1_TIPO", "GG", Nil},;
                {"B1_UM", "PC", Nil},;
                {"B1_LOCPAD", "01", Nil},;
                {"B1_PICM", 0, Nil},;
                {"B1_IPI", 0, Nil},;
                {"B1_CONTRAT", "N", Nil},;
                {"B1_LOCALIZ", "N", Nil};
            }

    Begin Transaction

        MSExecAuto ({|x,y|Mata010(x,y)}, aDados, 3)

        //Caso ocorra algum erro
        If lMSErrorAuto
            Alert("Ocorreram erros durante a operação!")
            MostraErro()
            
            DisarmTransaction()
        Else
            MsgInfo("Operação finalizada!", "Aviso")
        Endif

    End Transaction

    RestArea(aArea)

Return
