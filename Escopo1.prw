#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

Static cStatic := ''

user Function Escopo1()

    //VARIAVEIS LOCAIS
    Local nVar0 := 1
    Local nVar1 := 20

    //VARIAVEIS PRIVATE
    Private cPri := 'private!'

    //VARIAVEIS PUBLIC
    Public __cPublic := 'RCTI'

    TestEscop(nVar0, nVar1)

return

Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei'
    Default nValor1 := 0

    //Alterando conteudo da variavel
    nValor2 := 10

    //Mostrar conteudo da variavel private
    Alert("Private: " + cPri)

    //Alterar valor da variavel public
    Alert("Publica: "+ __cPublic)

    MsgAlert(nValor2)
    Alert("Variavel Static: "+ cStatic)

Return
