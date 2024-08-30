#INCLUDE 'protheus.ch'
#INCLUDE 'parmtype.ch'

 User Function DoCase()
    
    Local cData := "14/12/2017"

        Do Case
            Case cData == "20/12/2017"
            Alert("Não é Natal " + cData)

            Case cData == "25/12/2017"
            Alert("é Natal " + cData)

            OtherWise
            MsgAlert("Não sei qual dia é hoje!")
        EndCase

 return 
