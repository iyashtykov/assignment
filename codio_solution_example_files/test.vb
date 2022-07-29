' CODIO SOLUTION BEGIN
Imports System
Imports System.Collections.Generic

Module Module1

    Sub Main()
        Dim a As New M8Ball

        Do While True

            Dim q As String = ""
            Console.Write("ask me about the future... ")
            q = Console.ReadLine()

            If q.Trim <> "" Then
                Console.WriteLine("the answer is... {0}", a.getAnswer(q))
            Else
                Exit Do
            End If
        Loop

    End Sub

End Module


' CODIO SOLUTION END
