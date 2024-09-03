#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Modelo01()
    
    Local cAlias := "SB1"
    Local cTitulo := "Cadastro - AXCadastro"
    Local cVldExc := ".T."
    Local cVlDalt := ".T."

    AXCadastro(cAlias, cTitulo, cVldExc, cVlDalt)

Return Nil
