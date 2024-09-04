#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function A010Tok()
    
    Local lExecuta := .T.
    Local cTipo := AllTrim(M->B1_TIPO)
    Local cConta := AllTrim(M->B1_CONTA)

    If  (cTipo = "PA" .AND. cConta = "001")

        Alert("A conta <b> "+ cConta + "</b> não pode estar";
        + "associada a um produto do tipo <b>" + cTipo)

        lExecuta:= .F.

    EndIf

Return(lExecuta) 
