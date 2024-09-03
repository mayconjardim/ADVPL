#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

User Function Mbrw00()

    Local cAlias := "SB1"
    Private cTitulo := "Cadastro Produtos MBROWSE"
    Private aRotina := {}

    AADD(aRotina, {"Pesquisa", "AxPesqui", 0, 1})
    AADD(aRotina, {"Visualizar", "AxVisual", 0, 2})
    AADD(aRotina, {"Incluir", "AxInclui", 0, 3})
    AADD(aRotina, {"Trocar", "AxAltera", 0, 4})
    AADD(aRotina, {"Excluir", "AxDeleta", 0, 5})
    AADD(aRotina, {"olaMundo", "U_OLAMUNDO", 0, 6})

    dBSelectArea(cAlias)
    dbSetOrder(1)
    mBrowse(,,,,cAlias) 

Return
