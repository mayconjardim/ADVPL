#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Mbrsa2()

    Local cAlias := "SA2"
    Local aCores := {}
    Local cFiltra := "A2_FILIAL == '"+xFilial('SA2')+"' .And. A2_EST == 'SP'"
    Private cCadastro := "Cadastro MBROWSE"
    Private aRotina := {}
    Private aIndexSA2 := {}
    Private bFiltraBrw := {|| FilBrowse(cAlias,@aIndexSA2,@cFiltra)}

    AADD(aRotina, {"Pesquisar" ,"AxPesqui", 0,1})
    AADD(aRotina, {"Visualizar" ,"AxVisual", 0,2})
    AADD(aRotina, {"Incluir" ,"U_BInclui", 0,3})
    AADD(aRotina, {"Alterar" ,"U_BAltera", 0,4})
    AADD(aRotina, {"Excluir" ,"U_BDeleta", 0,5})
    AADD(aRotina, {"Legenda" ,"U_BLegenda", 0,6})

    AADD(aCores, {"A2_TIPO == 'F'", "BR_VERDE" })
    AADD(aCores, {"A2_TIPO == 'J'", "BR_AMARELO" })
    AADD(aCores, {"A2_TIPO == 'X'", "BR_LARANJA" })
    AADD(aCores, {"A2_TIPO == 'R'", "BR_MARROM" })
    AADD(aCores, {"Empty(A2_TIPO)", "BR_PRETO" })



    dBSelectArea(cAlias)
    dbSetOrder(1)

    Eval(bFiltraBrw)

    DBGoTop()
    mBrowse(6,1,22,75, cAlias,,,,,,aCores)

    EndFilBrw(cAlias, aIndexSA2)

Return

User Function BInclui(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxInclui(cAlias, nReg, nOpc)
      
        If nOpcao == 1
            MsgInfo("Inclus�o efetuada com sucesso!","Aten��o")
        else
            MsgAlert("Inclus�o cancelada!")
        EndIf

Return

User Function BAltera(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxInclui(cAlias, nReg, nOpc)
      
        If nOpcao == 1
            MsgInfo("Altera��o efetuada com sucesso!","Aten��o")
        else
            MsgAlert("Altera��o cancelada!")
        EndIf

Return

User Function BDeleta(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxInclui(cAlias, nReg, nOpc)
      
        If nOpcao == 1
            MsgInfo("Exclus�o efetuada com sucesso!","Aten��o")
        else
            MsgAlert("Exclus�o cancelada!")
        EndIf

Return

User Function BLegenda()

    Local aLegenda := {}

    AADD(aLegen9da, {"BR_VERDE", "Pessoa F�sica"})
    AADD(aLegenda, {"BR_AMARELO", "Pessoa Jur�dica"})
    AADD(aLegenda, {"BR_LARANJA", "Exporta��o"})
    AADD(aLegenda, {"BR_MARROM", "Fornecedor Rural"})
    AADD(aLegenda, {"BR_PRETO", "N�o Classificado"})

    BrwLegenda(cCadastro, "Legenda", aLegenda)

Return
